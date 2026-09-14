SELECT
    p.category,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM DE_PROJECT1.DBO.ORDERS_RAW AS o
INNER JOIN DE_PROJECT1.DBO.PRODUCTS_RAW AS p
    ON o.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC;