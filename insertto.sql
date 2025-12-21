INSERT INTO Customer
(customer_id, fname,
lname, e_mail) VALUES
(1, 'Tom', 'Cruse', 'TomCruse@gmail.com'),
(2, 'Bruce', 'Wayne', 'Batman@gmail.com'),
(3, 'Antoni', 'Hopkins', 'Hannibal@gmail.com'),
(4, 'Mozart', 'Amadeus',
'MozartWAmadeus@gmail.com'),
(5, 'Luke', 'Cage', 'Force@gmail.com');

INSERT INTO Seller (seller_id,
company_name, e_mail, phone, address)
VALUES
(1, 'ABB', 'ABB@gmail.com', '5338647722',
'Mersin/TURKEY'),
(2, 'SK', 'SK@gmail.com', '5337452112',
'Manisa/TURKEY'),
(3, 'BS', 'BS@gmail.com', '5334789654',
'Istanbul/TURKEY'),
(4, 'UG', 'UG@gmail.com', '5332245687',
'Antalya/TURKEY');

INSERT INTO category (category_id, name)
VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Home Appliances');

INSERT INTO Product (product_id, product_name, description, price, stock, seller_id,
category_id) VALUES
(1, 'Smartphone X12', 'High-end smartphone with OLED display', 899.99, 50, 1, 1),
(2, 'Wireless Headphones', 'Noise cancelling over-ear headphones', 199.50, 120, 1, 1),
(3, 'Mystery Novel', 'Top-selling mystery thriller book', 14.99, 200, 2, 2),
(4, 'Cotton T-Shirt', '100% cotton unisex t-shirt', 9.99, 500, 3, 3),
(5, 'Microwave Oven', 'Digital microwave oven 900W', 129.99, 30, 4, 4);

INSERT INTO "Product_Attribute" (attribute_id,
name,
value, product_id) VALUES
(1, 'Color', 'Black', 1), (2, 'Storage', '128GB', 1),
(3, 'Battery', '4000mAh', 1), (4, 'Color', 'White', 2)
, (5, 'Weight', '250g', 2), (6, 'Pages', '420', 3),
(7, 'Size', 'L', 4), (8, 'Material', 'Cotton', 4),
(9, 'Power', '900W', 5);

INSERT INTO address (address_id, customer_id,
street, city, post_code) VALUES (1, 1, 'Main
Street 12', 'Mersin', 33000), (2, 2, 'Wayne Manor
1', 'Gotham', 10001), (3, 3, 'Elm Road 45',
'London', 10000), (4, 4, 'Amadeus Str. 9', 'Vienna',
1010), (5, 5, 'Cage District 7', 'New York', 90001);

INSERT INTO order_status (order_status_id, created_at,
status_name) VALUES (1, NOW(), 'Pending'), (2, NOW(),
'Processing'), (3, NOW(), 'Shipped'), (4, NOW(), 'Delivered'),
(5, NOW(), 'Cancelled');

INSERT INTO "Order" (order_id, customer_id, order_date, address_id,
order_status_id, total_amount) VALUES
(1, 1, '2025-12-01', 1, 1, 1099.49), (2, 2, '2025-12-03', 2, 2, 14.99), (3, 3,
'2025-12-05', 3, 3, 219.49), (4, 4, '2025-12-07', 4, 4, 9.99), (5, 5, '2025-12-10',
5, 1, 129.99);

INSERT INTO order_item
(item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 899.99), (2, 1, 2, 1, 199.50), (3, 2, 3, 1, 14.99),
(4, 3, 2, 1, 199.50), (5, 3, 1, 1, 899.99), (6, 4, 4, 1, 9.99),
(7, 5, 5, 1, 129.99);

