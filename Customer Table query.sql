SELECT * FROM banks.`customer table`;

#1. Count number of customers by gender:
SELECT gender, COUNT(*) AS customer_count
FROM banks.`customer table`
GROUP BY gender;

#2. Find customers by state of residence:
SELECT state_of_residence, COUNT(*) AS customer_count
FROM banks.`customer table`
GROUP BY state_of_residence;

#3. Calculate average account open date by gender:
SELECT gender, AVG(act_open_date) AS avg_open_date
FROM banks.`customer table`
GROUP BY gender;

#4. Retrieve customer details by account number:
SELECT *
FROM banks.`customer table`
WHERE account_number = '6800756648';

#5. List customers and their products:
SELECT customer_name, products
FROM banks.`customer table`;

#filter
#Filter by state_of_residence (e.g., customers residing in a specific state):
SELECT *
FROM banks.`customer table` WHERE state_of_residence = 'Lagos';

#Filter by act_open_date (e.g., customers who opened their account after a specific date):
SELECT *
FROM banks.`customer table` WHERE act_open_date >= '2023-01-01';

#Filter by gender (e.g., only males):
SELECT *
FROM banks.`customer table`
WHERE gender = 'Male';

#Filter by customer_name (e.g., exact match):
SELECT *
FROM banks.`customer table`
WHERE customer_name = 'Yemi Aminu';