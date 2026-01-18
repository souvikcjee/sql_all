--1.	Who are the top customers by total sales in each state?

SELECT state, customer_name,tot_sales,RANK() OVER(PARTITION BY state ORDER BY tot_sales DESC)
FROM
(SELECT customer_name,state,tot_sales
FROM customer as c
INNER JOIN 
(SELECT SUM(sales) as tot_sales,customer_id
FROM sales
GROUP BY customer_id) AS a
ON c.customer_id=a.customer_id)

--2.	What are the top 5 sub-categories based on total sales?"
SELECT sub_category, SUM(tot_sales) as sum
FROM
(SELECT product_name, sub_category, tot_sales FROM
product AS p
INNER JOIN
(SELECT SUM(sales) as tot_sales,product_id
FROM sales
GROUP BY product_id) as b
ON p.product_id=b.product_id) AS s
GROUP BY sub_category
ORDER BY sum DESC
LIMIT 5
