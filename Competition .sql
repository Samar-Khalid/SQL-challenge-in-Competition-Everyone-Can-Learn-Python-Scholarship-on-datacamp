
-- What is the most expensive item your company sells? The least expensive?
SELECT MAX(list_price) AS most_expensive, MIN(list_price) AS least_expensive
FROM products;


-- How many different products of each category does your company sell?
SELECT c.category_name, COUNT(*) AS product_count
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;


-- What are the top three brands with the highest average list price? The top three categories?
SELECT TOP 3 b.brand_name, AVG(p.list_price) AS average_list_price
FROM products p
JOIN brands b ON p.brand_id = b.brand_id
GROUP BY b.brand_name
ORDER BY average_list_price DESC;


-- Any other insights you found during your analysis?
SELECT TOP 3 c.category_name, AVG(p.list_price) AS average_list_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY average_list_price DESC;
