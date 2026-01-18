--1.	List all unique cities located in the northern or eastern regions,
--using the IN statement to filter the results.
SELECT   COUNT(DISTINCT city) FROM public.customer
WHERE region IN ('South','East');


-- 2.	Identify all orders where 
-- the sales amount falls between 100 and 500, using the BETWEEN operator.
SELECT  COUNT(DISTINCT order_id) FROM public.sales
WHERE sales BETWEEN 100 AND 500;

--3.	Retrieve all customers whose last names have 
--exactly four characters, applying the LIKE operator for the search.
SELECT  COUNT(customer_name) FROM public.customer
WHERE customer_name LIKE '% ____';
