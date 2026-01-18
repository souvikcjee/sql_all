CREATE TABLE recipe_details1 (ingredient VARCHAR(200), title VARCHAR(200),url VARCHAR(200));
COPY recipe_details1 FROM 'D:\download\Bengali_recipes2.csv' 
WITH (FORMAT csv, DELIMITER ',', HEADER true, QUOTE '"', ESCAPE '\');


--select  FROM 
SELECT regexp_replace(ingredient, '[0-9]', '', 'g') AS cleaned_text
FROM recipe_details1;

CREATE TABLE prepros_table AS
SELECT string_agg(regexp_replace(
         lower(ingredient), 
         '(tsp.|tbsp.|to|[0-9]|/|,|-)', 
         '', 
         'g'
       ),',') AS cleaned_text,title
FROM recipe_details1
GROUP BY title;

