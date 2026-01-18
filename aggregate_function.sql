--1.	Calculate the total sum of all sales values
SELECT  SUM(sales) FROM public.sales
--ans: 2297200.86

--2.	Determine the number of customers in the north region 
--who are aged between 20 and 30.

SELECT COUNT(customer_name)
FROM public.customer
WHERE region='North'
AND age BETWEEN 20 AND 30;
--ans: 0

--3.	Compute the average age of customers located in the east region.
SELECT AVG(age)
FROM public.customer
WHERE region='East';
--ans:44

--4.	Identify the minimum and maximum ages of customers from Philadelphia
SELECT MIN(age)
FROM public.customer
WHERE city='Philadelphia';
--ans: 18
