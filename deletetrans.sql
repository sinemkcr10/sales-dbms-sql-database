DELETE FROM seller WHERE seller_id = 3;

DELETE FROM order_status
WHERE status_name IN ('Pending', 'Delivered');
