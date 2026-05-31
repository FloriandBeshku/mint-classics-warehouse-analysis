-- TITLE: Mint Classics - Table Verifications
-- ARCHITECTURE: Relational Database Optimization Model (MySQ)

-- SECTION 1: STORAGE & INVENTORY ---
SELECT * FROM warehouses;
SELECT * FROM products;
SELECT * FROM productlines;

-- SECTION 2: SALES & TRANSACTIONS ---
SELECT * FROM payments;
SELECT * FROM orders;
SELECT * FROM orderdetails;

-- SECTION 3: WORKFORCE & CLIENT NETWORK ---
SELECT * FROM offices;
SELECT * FROM employees;
SELECT * FROM customers;
