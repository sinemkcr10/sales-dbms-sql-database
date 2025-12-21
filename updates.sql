UPDATE Customer
SET e_mail = 'TomMissionImpossible@gmail.com'
WHERE customer_id = 1;

UPDATE Product SET stock = stock + 131
WHERE product_id = 2;

UPDATE category
SET name = 'Electronic Devices'
WHERE category_id = 1;

UPDATE Product
SET price = 849.99,
    stock = 45
WHERE product_id = 1;

UPDATE "Order"
SET order_status_id = 2
WHERE order_id = 1;
