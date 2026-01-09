CREATE TABLE IF NOT EXISTS financial_transactions (
    transaction_id BIGINT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL,
    transaction_time TIMESTAMP(3) NOT NULL,
    payment_type VARCHAR(50) DEFAULT 'bank_transfer',
    INDEX idx_customer_id (customer_id),
    INDEX idx_transaction_time (transaction_time)
);

INSERT IGNORE INTO financial_transactions (transaction_id, customer_id, total_amount, transaction_time, payment_type) VALUES
(3001, 2001, 120.00, '2024-01-01 09:10:00.000', 'bank_transfer'),
(3002, 2002, 65.30, '2024-01-02 14:45:00.000', 'credit_card'),
(3003, 2003, 180.00, '2024-01-02 16:00:00.000', 'credit_card'),
(3004, 2004, 95.50, '2024-01-03 11:30:00.000', 'paypal'),
(3005, 2005, 210.00, '2024-01-03 13:20:00.000', 'bank_transfer'),
(3006, 2006, 120.75, '2024-01-04 08:40:00.000', 'debit_card'),
(3007, 2007, 150.00, '2024-01-04 17:25:00.000', 'credit_card'),
(3008, 2008, 185.60, '2024-01-05 09:50:00.000', 'paypal'),
(3009, 2009, 100.00, '2024-01-06 10:35:00.000', 'debit_card'),
(3010, 2010, 220.40, '2024-01-06 15:30:00.000', 'bank_transfer');
