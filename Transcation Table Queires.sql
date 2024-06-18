#view Tables
SELECT * FROM banks.`transactions table`;

#transcations table
#1. Total Transaction Amount
SELECT SUM(transaction_amount) AS total_transaction_amount
FROM banks.`transactions table`;

#2. Average Transaction Amount
SELECT AVG(transaction_amount) AS avg_transaction_amount
FROM banks.`transactions table`;

#3. Number of Transactions by Type
SELECT transaction_type, COUNT(*) AS transaction_count
FROM banks.`transactions table` GROUP BY transaction_type;

#4. Maximum and Minimum Transaction Amounts
SELECT MAX(transaction_amount) AS max_transaction_amount,
       MIN(transaction_amount) AS min_transaction_amount
FROM banks.`transactions table`;

#5. Transactions by Channel
SELECT channels, COUNT(*) AS transaction_count
FROM banks.`transactions table` GROUP BY channels;

#6. Transactions by Currency
SELECT currency, SUM(transaction_amount) AS total_amount
FROM banks.`transactions table`
GROUP BY currency;

#7. Transactions Over Time
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
       COUNT(*) AS transaction_count,
       SUM(transaction_amount) AS total_amount
FROM banks.`transactions table`
GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
ORDER BY month;

#8. Finding Transactions for a Specific Customer
SELECT *
FROM banks.`transactions table`
WHERE customer_id = '10';

#filter 
#Filter by transaction_id:
SELECT *
FROM banks.`transactions table`
WHERE transaction_id = '15';

#Filter by customer_id:
SELECT *
FROM banks.`transactions table`
WHERE customer_id = '9';

#Filter by transaction_date (for transactions on a specific date):
SELECT *
FROM banks.`transactions table`
WHERE transaction_date = '2022-06-18';

#Filter by transaction_type (e.g., debit):
SELECT *
FROM banks.`transactions table`
WHERE transaction_type = 'Debit';

#Filter by transaction_amount (e.g., transactions greater than 10000):
SELECT *
FROM banks.`transactions table`
WHERE transaction_amount > 10000;

#Filter by channels (e.g., apps):
SELECT *
FROM banks.`transactions table`
WHERE channels = 'Apps';

#Filter by currency (e.g., transactions in USD):
SELECT *
FROM banks.`transactions table`
WHERE currency = 'Dollar';

