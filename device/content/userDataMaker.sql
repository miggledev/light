-- userDataMaker.sql
-- Creates tables and inserts sample data for registered users to access exclusive Miggle services

-- Create users table
CREATE TABLE users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username NVARCHAR(50) NOT NULL UNIQUE,
    password_hash NVARCHAR(255) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    registered_at DATETIME DEFAULT GETDATE()
);

-- Create services table
CREATE TABLE services (
    service_id INT PRIMARY KEY IDENTITY(1,1),
    service_name NVARCHAR(100) NOT NULL,
    description NVARCHAR(255)
);

-- Create user_services table (many-to-many relationship)
CREATE TABLE user_services (
    user_id INT FOREIGN KEY REFERENCES users(user_id),
    service_id INT FOREIGN KEY REFERENCES services(service_id),
    granted_at DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (user_id, service_id)
);

-- Insert sample users
INSERT INTO users (username, password_hash, email)
VALUES 
('miguel', 'hashed_password_1', ''),
('alice', 'hashed_password_2', 'alice@example.com');

-- Insert sample services
INSERT INTO services (service_name, description)
VALUES
('Premium Content', 'Access to exclusive articles and videos'),
('Early Access', 'Get new features before public release');

-- Grant services to users
INSERT INTO user_services (user_id, service_id)
VALUES
(1, 1), -- miguel gets Premium Content
(1, 2), -- miguel gets Early Access
(2, 1); -- alice gets Premium Content

-- Query to check which users have access to which services
SELECT u.username, s.service_name, us.granted_at
FROM user_services us
JOIN users u ON us.user_id = u.user_id
JOIN services s ON us.service_id = s.service_id;