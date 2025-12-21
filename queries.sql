SELECT product_name, stock
FROM Product
WHERE stock > 100;

SELECT p.product_name, c.name AS category
FROM Product p
JOIN category c ON p.category_id = c.categ

SELECT o.order_id, c.fname, c.lname,
o.total_amount
FROM "Order" o JOIN Customer c ON
o.customer_id = c.customer_id;


SELECT oi.order_id, p.product_name, oi.quantity
FROM order_item oi
JOIN Product p ON oi.product_id = p.product_id;

SELECT payment_id, order_id,
amount, payment_status
FROM payment
WHERE payment_status = 'Pending';


SELECT product_name, price
FROM Product
ORDER BY price DESC
LIMIT 1;

SELECT o.order_id, c.fname, c.lname,
p.payment_method, p.amount
FROM "Order" o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN payment p ON o.order_id = p.order_id

SELECT product_name, price
FROM Product
ORDER BY price DESC
LIMIT 1;

SELECT p.product_name, s.company_name, c.name
AS category
FROM Product p
JOIN Seller s ON p.seller_id = s.seller_id
JOIN category c ON p.category_id = c.category_id;

SELECT product_name, stock
FROM Product
WHERE stock < 100;


SELECT o.order_id, p.payment_method, p.amount
FROM "Order" o
JOIN payment p ON o.order_id = p.order_id;


SELECT c.fname, c.lname, COUNT(o.order_id) AS
total_orders
FROM Customer c
JOIN "Order" o ON c.customer_id = o.customer_id
GROUP BY c.fname, c.lname
ORDER BY total_orders DESC
LIMIT 1;

SELECT p.product_name, p.price, s.company_name
FROM Product p
JOIN Seller s ON p.seller_id = s.seller_id
ORDER BY p.price DESC
LIMIT 1

SELECT c.name AS category, SUM(p.stock) AS total_stock
FROM category c
JOIN Product p ON c.category_id = p.category_id
GROUP BY c.name;

SELECT MAX(price) AS max_price, MIN(price) AS
min_price
FROM Product;
