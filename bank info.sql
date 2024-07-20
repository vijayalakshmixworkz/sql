CREATE TABLE bank_details (
    account_id INT ,
    account_holder VARCHAR(255),
    account_type VARCHAR(50),
    branch_name VARCHAR(255),
    currency VARCHAR(10),
    balance BIGINT,
    credit_limit BIGINT,
    interest_rate DECIMAL(5, 2),
    account_status BOOLEAN
);
ALTER TABLE bank_details ADD opening_date DATE;

ALTER TABLE bank_details ADD email VARCHAR(255);

ALTER TABLE bank_details ADD phone_number VARCHAR(15);

ALTER TABLE bank_details ADD address VARCHAR(500);

ALTER TABLE bank_details ADD account_manager VARCHAR(255);

ALTER TABLE bank_details RENAME COLUMN account_holder TO holder_name;

ALTER TABLE bank_details RENAME COLUMN account_type TO type_of_account;

ALTER TABLE bank_details RENAME COLUMN branch_name TO branch_location;

ALTER TABLE bank_details RENAME COLUMN currency TO currency_type;

ALTER TABLE bank_details RENAME COLUMN account_status TO is_active;

INSERT INTO bank_details VALUES (1, 'Alice Johnson', 'Savings', 'Downtown Branch', 'USD', 150000, 50000, 3.5, TRUE, '2022-01-15', 'alice.johnson@example.com', '123-456-7890', '123 Elm Street', 'Robert Smith');
INSERT INTO bank_details VALUES(2, 'Bob Williams', 'Checking', 'Uptown Branch', 'USD', 25000, 10000, 2.0, TRUE, '2023-03-21', 'bob.williams@example.com', '234-567-8901', '456 Oak Avenue', 'Emily Davis');
INSERT INTO bank_details VALUES(3, 'Charlie Brown', 'Business', 'Midtown Branch', 'USD', 300000, 200000, 4.0, FALSE, '2021-06-30', 'charlie.brown@example.com', '345-678-9012', '789 Pine Road', 'Michael Johnson');
INSERT INTO bank_details VALUES(4, 'Diana Prince', 'Savings', 'Downtown Branch', 'EUR', 200000, 60000, 3.0, TRUE, '2020-11-25', 'diana.prince@example.com', '456-789-0123', '321 Maple Street', 'Linda Lee');
INSERT INTO bank_details VALUES(5, 'Eve Adams', 'Checking', 'Uptown Branch', 'USD', 12000, 5000, 2.5, TRUE, '2022-05-18', 'eve.adams@example.com', '567-890-1234', '654 Birch Lane', 'David Green');
INSERT INTO bank_details VALUES(6, 'Frank Castle', 'Savings', 'Midtown Branch', 'GBP', 80000, 20000, 3.8, TRUE, '2021-09-10', 'frank.castle@example.com', '678-901-2345', '987 Cedar Drive', 'Sarah Brown');
INSERT INTO bank_details VALUES(7, 'Grace Lee', 'Business', 'Downtown Branch', 'USD', 500000, 300000, 4.5, TRUE, '2022-07-15', 'grace.lee@example.com', '789-012-3456', '321 Birch Street', 'James Wilson');
INSERT INTO bank_details VALUES(8, 'Henry Clark', 'Checking', 'Uptown Branch', 'USD', 6000, 2000, 2.2, FALSE, '2023-01-01', 'henry.clark@example.com', '890-123-4567', '456 Willow Avenue', 'Nancy Davis');
INSERT INTO bank_details VALUES(9, 'Isabel Martinez', 'Savings', 'Midtown Branch', 'EUR', 75000, 25000, 3.7, TRUE, '2020-12-12', 'isabel.martinez@example.com', '901-234-5678', '654 Elm Street', 'Steven Harris');
INSERT INTO bank_details VALUES(10, 'Jack Smith', 'Business', 'Downtown Branch', 'USD', 400000, 150000, 4.2, TRUE, '2021-10-30', 'jack.smith@example.com', '012-345-6789', '789 Oak Lane', 'Laura Brown');

UPDATE bank_details SET balance = 160000, email = 'alice.johnson@newdomain.com'WHERE account_id = 1;
UPDATE bank_details SET credit_limit = 12000, phone_number = '234-567-9999' WHERE account_id = 2;
UPDATE bank_details SET interest_rate = 4.2, address = '789 Pine Road, Apt 2B' WHERE account_id = 3;
UPDATE bank_details SET currency_type = 'USD', is_active = FALSE WHERE account_id = 4;
UPDATE bank_details SET opening_date = '2022-06-15', account_manager = 'Paul Thompson' WHERE account_id = 5;
UPDATE bank_details SET balance = 85000, email = 'frank.castle@updatedmail.com'WHERE account_id = 6;
UPDATE bank_details SET credit_limit = 320000, phone_number = '789-012-3456' WHERE account_id = 7;
UPDATE bank_details SET branch_location = 'New Branch', is_active = TRUE WHERE account_id = 8;
UPDATE bank_details SET address = '789 Cedar Drive', account_manager = 'Rachel Adams' WHERE account_id = 9;
UPDATE bank_details SET balance = 420000, interest_rate = 4.3 WHERE account_id = 10;

DELETE FROM bank_details WHERE account_id = 1;
DELETE FROM bank_details WHERE account_id = 4;
DELETE FROM bank_details WHERE account_id = 7;

SELECT *  FROM bank_details WHERE balance > 50000;
SELECT *  FROM bank_details WHERE type_of_account = 'Savings' AND balance < 100000;
SELECT * FROM bank_details WHERE branch_location = 'Uptown Branch' OR interest_rate > 3.5;
SELECT * FROM bank_details WHERE account_id IN (2, 5, 8);
SELECT * FROM bank_details WHERE account_id NOT IN (3, 6, 9);







