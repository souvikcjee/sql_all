--1.	Retrieve all customers whose first name and last name are both 5 characters 
-- long, and whose last name starts with the letters "a," "b," "c," or "d.“
SELECT *
FROM customer
WHERE customer_name ~* '^[a-z]{5}\s(a|b|c|d)[a-z]{4}$'

--2.	Create a table named "zipcode" and insert the specified data into it.
CREATE TABLE zipcode1 ("pin" VARCHAR)
INSERT INTO zipcode1(pin)
VALUES (234432)
INSERT INTO zipcode1(pin)
VALUES (23345)
INSERT INTO zipcode1(pin)
VALUES ('sdfe4')
INSERT INTO zipcode1(pin)
VALUES ('123&3')
INSERT INTO zipcode1(pin)
VALUES (67424)
INSERT INTO zipcode1(pin)
VALUES (7895432)
INSERT INTO zipcode1(pin)
VALUES (12312)

--Retrieve the valid zip codes from this table, which consist of either 5 or 6 numeric characters
SELECT *
FROM zipcode1
WHERE pin ~* '^[0-9]{5,6}$'