import csv
import os
import random
import string
import argparse
from datetime import datetime
import qrcode
import io

CSV_FILE = "miggle_production_log.csv"

def generate_serial(prefix="MGL", year=None, length=5):
    if year is None:
        year = str(datetime.now().year)[-2:]
    code = ''.join(random.choices(string.ascii_uppercase + string.digits, k=length))
    return f"{prefix}-{year}-{code}"

def print_qr_code(data):
    qr = qrcode.QRCode(border=1)
    qr.add_data(data)
    qr.make(fit=True)
    output = io.StringIO()
    qr.print_ascii(out=output, invert=True)
    print(output.getvalue())
    output.close()

def log_unit(serial, model="Light", recipient="N/A"):
    date = datetime.now().strftime("%Y-%m-%d")
    exists = os.path.exists(CSV_FILE)

    with open(CSV_FILE, mode='a', newline='') as file:
        writer = csv.writer(file)
        if not exists:
            writer.writerow(["Serial Number", "Date", "Model", "Recipient"])
        writer.writerow([serial, date, model, recipient])

def main():
    parser = argparse.ArgumentParser(description="Miggle Light Production Tracker with QR")
    parser.add_argument('-n', '--number', type=int, default=1, help="How many units to log")
    parser.add_argument('-p', '--prefix', type=str, default="MGL", help="Serial prefix")
    parser.add_argument('-y', '--year', type=str, help="Year (e.g., 25)")
    parser.add_argument('-l', '--length', type=int, default=5, help="Serial random code length")
    parser.add_argument('-r', '--recipient', type=str, default="N/A", help="Recipient or batch label")
    parser.add_argument('--qr', action='store_true', help="Show QR code in terminal")

    args = parser.parse_args()

    for _ in range(args.number):
        serial = generate_serial(args.prefix, args.year, args.length)
        log_unit(serial, "Light", args.recipient)
        print(f"\nGenerated and logged: {serial}")
        if args.qr:
            print_qr_code(serial)

if __name__ == "__main__":
    main()

