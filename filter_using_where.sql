--1.	Fetch all orders where the discount value is 
--greater than zero, and sort the results in descending order based on the discount value.
SELECT  * FROM public.sales
WHERE discount > 0
ORDER BY discount DESC;
--2.	Restrict the results of the above query to the top 10 entries.
SELECT  * FROM public.sales
WHERE discount > 0
ORDER BY discount DESC
LIMIT 10;
