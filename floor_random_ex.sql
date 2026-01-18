--1.	You’re hosting a lottery for your customers. Select a list of 5 lucky customers from the customer table using a random function. 
SELECT *
FROM customer
ORDER BY random()
LIMIT 5;

--2.	Since you cannot charge customers in fractional amounts, for a sales value of 1.63,
--you would charge either 1 or 2. In this case, calculate:     
--•	The total sales revenue if you always charge the lower integer value.
SELECT SUM(FLOOR(sales))
FROM sales

--•	The total sales revenue if you always charge the higher integer value.     
SELECT SUM(CEIL(sales))
FROM sales
--•	The total sales revenue if you round the sales amount.
SELECT SUM(ROUND(sales))
FROM sales
