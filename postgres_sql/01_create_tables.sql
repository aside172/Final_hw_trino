CREATE TABLE IF NOT EXISTS customer_profiles (
    profile_id BIGINT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) UNIQUE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS customer_orders (
    purchase_id BIGINT PRIMARY KEY,
    profile_id BIGINT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    total_cost DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (profile_id) REFERENCES customer_profiles(profile_id)
);

INSERT INTO customer_profiles (profile_id, full_name, contact_email) VALUES
(101, 'Samuel Green', 'samuel.green@example.com'),
(102, 'Victoria Lee', 'victoria.lee@example.com'),
(103, 'Liam Smith', 'liam.smith@example.com'),
(104, 'Sophia Wilson', 'sophia.wilson@example.com'),
(105, 'Oliver Johnson', 'oliver.johnson@example.com')
ON CONFLICT (profile_id) DO NOTHING;

INSERT INTO customer_orders (purchase_id, profile_id, order_date, total_cost) VALUES
(5001, 101, '2024-01-01 09:15:00', 120.75),
(5002, 102, '2024-01-01 11:45:00', 55.25),
(5003, 101, '2024-01-02 08:30:00', 210.40),
(5004, 103, '2024-01-02 14:10:00', 135.00),
(5005, 104, '2024-01-03 16:50:00', 180.50),
(5006, 102, '2024-01-03 12:20:00', 95.10),
(5007, 105, '2024-01-04 08:55:00', 150.30),
(5008, 103, '2024-01-04 19:30:00', 80.90),
(5009, 101, '2024-01-05 13:40:00', 220.00),
(5010, 104, '2024-01-05 17:10:00', 165.70)
ON CONFLICT (purchase_id) DO NOTHING;