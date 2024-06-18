CREATE DATABASE banks;

#join the Tables
SELECT `transactions table`.transaction_id, `transactions table`.customer_id, `transactions table`.transaction_date, `transactions table`.transaction_type, `transactions table`.transaction_amount,
       `transactions table`.channels, `transactions table`.currency, `customer table`.customer_name, `customer table`.account_number, `customer table`.account_type, `customer table`.gender,
       `customer table`.act_open_date, `customer table`.products, `customer table`.state_of_residence
FROM banks.`transactions table`
INNER JOIN `customer table` ON `transactions table`.customer_id = `customer table`.customer_id;

#
SELECT t.transaction_id, t.customer_id, t.transaction_date, t.transaction_type, t.transaction_amount,
       t.channels, t.currency, c.customer_name, c.account_number, c.account_type, c.gender,
       c.act_open_date, c.products, c.state_of_residence,
       (
           SELECT COUNT(*)
           FROM transactions t2
           WHERE t2.customer_id = c.customer_id
       ) AS total_transactions,
       (
           SELECT SUM(transaction_amount)
           FROM transactions t3
           WHERE t3.customer_id = c.customer_id
       ) AS total_transaction_amount
FROM transactions t
INNER JOIN customers c ON t.customer_id = c.customer_id;


#1. Calculating Total Transaction Amount for Each Customer
SELECT `customer table`.customer_id, `customer table`.customer_name,
       (
           SELECT SUM(`transactions table`.transaction_amount)
           FROM banks.`transactions table`
           WHERE `transactions table`.customer_id = `customer table`.customer_id
       ) AS total_transaction_amount
FROM banks.`customer table`;


