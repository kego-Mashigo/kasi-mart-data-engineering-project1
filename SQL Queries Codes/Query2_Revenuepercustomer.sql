SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM DE_PROJECT1.DBO.ORDERS_RAW AS o
LEFT JOIN DE_PROJECT1.DBO.CUSTOMERS_RAW AS c
    ON o.customer_id = c.customer_id
LEFT JOIN DE_PROJECT1.DBO.PRODUCTS_RAW AS p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY
    total_revenue DESC;