SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    o.product_id,
    p.product_name,
    p.category,
    o.quantity,
    p.unit_price,
    o.quantity * p.unit_price AS line_revenue
FROM DE_PROJECT1.DBO.ORDERS_RAW AS o
LEFT JOIN DE_PROJECT1.DBO.CUSTOMERS_RAW AS c
    ON o.customer_id = c.customer_id
LEFT JOIN DE_PROJECT1.DBO.PRODUCTS_RAW AS p
    ON o.product_id = p.product_id
ORDER BY
    o.order_date,
    o.order_id;