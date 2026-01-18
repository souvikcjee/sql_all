--List all unique cities located in the northern or eastern regions,
--using the IN statement to filter the results.
SELECT  DISTINCT city FROM public.customer
WHERE region IN ('North','East');


-- 2.	Identify all orders where 
-- the sales amount falls between 100 and 500, using the BETWEEN operator.
SELECT  * FROM public.sales
WHERE sales BETWEEN 100 AND 500;

--3.	Retrieve all customers whose last names have 
--exactly four characters, applying the LIKE operator for the search.
SELECT  * FROM public.customer
WHERE customer_name LIKE '% ____';
