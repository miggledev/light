import argparse
import sys
import json

from pathlib import Path

jsonFormat = {
    "model": str,
    "colour": str,
    "paper-size": str,
    "year": str
}
parser = argparse.ArgumentParser()

parser.add_argument("model")
parser.add_argument("colour")
parser.add_argument("paper")

colours = [
    'blue',
    'green',
    'white',
    'black'
]

def generate_serial(sn: str):
    """
    Generate a random serial number
    format = XXXXX-migXXXX&datetime
    """
    if not color == colours
        print(f"that's not a colour")
        raise SystemExit(1)

def main():
    pass

if __name__ == "__main__":
    main()
