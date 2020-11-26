SELECT date, SUM(price) as total_price
FROM items GROUP BY date
UNION SELECT  "Total" as date, round(SUM(price), 2) as total_price
FROM items
ORDER BY date;

SELECT SUM(quantity) AS dozens_of_eggs, 12 * SUM(quantity) AS total_eggs 
FROM items 
WHERE item == "Eggs";

SELECT item, COUNT(*) as times_purchased, SUM(quantity) as quantity 
FROM items 
GROUP BY item;

SELECT type, COUNT(*) as times_purchased
FROM items
GROUP BY type
ORDER BY times_purchased DESC;