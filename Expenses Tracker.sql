
use expenseTracker;



CREATE TABLE expenses (
id INT AUTO_INCREMENT PRIMARY KEY,
expense_name VARCHAR(255) NOT NULL,
amout DECIMAL(10, 2) NOT NULL,
category VARCHAR(255),
date date);

INSERT INTO expenses (expense_name, amout, category, date)
VALUES('Groceries', 50.00, 'Food', '2023-06-15');

SELECT * FROM expenses;

SELECT * FROM expenses
WHERE date BETWEEN '2023-06-01' AND '2023-06-30';

SELECT * FROM expenses
WHERE category = 'Food';

UPDATE expenses
SET amout = 60.00
WHERE id = 1;

DELETE FROM expenses
WHERE id = 1;

SELECT * FROM expenses
WHERE amout >= 50.00 AND amout <=100.00;

SELECT * FROM expenses
ORDER BY date DESC;

SELECT * FROM expenses
ORDER BY amout ASC;

DESCRIBE expenses;

ALTER TABLE expenses
CHANGE COLUMN 'amout' 'amount' DECIMAL(10, 2) NOT NULL;

DESCRIBE expenses;

SELECT category, SUM(amout) AS total_amout
FROM expenses
GROUP BY category;

SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(amout) AS total_amout
FROM expenses
GROUP BY DATE_FORMAT(date, '%Y-%m');

SELECT * FROM expenses
WHERE category = 'Food'
ORDER BY date DESC;

SELECT category, SUM(amout) AS total_amout
FROM expenses
GROUP BY category
ORDER BY total_amout DESC
LIMIT 5;

SELECT SUM(amout) AS total_expenses
FROM expenses
WHERE date >= '2023-06-01' AND date <= '2023-06-30';

SELECT * FROM expenses 
WHERE category ='Food'
AND date >= '2023-06-01'
AND date <= '2023-06-30';

SELECT category, AVG(amout) AS average_expense
FROM expenses
GROUP BY category;

SELECT MAX(amout) AS highest_expense
FROM expenses;

SELECT DATE_FORMAT(date, '%Y-%m') AS month, COUNT(*) AS expense_count
FROM expenses
GROUP BY DATE_FORMAT(date, '%Y-%m');























