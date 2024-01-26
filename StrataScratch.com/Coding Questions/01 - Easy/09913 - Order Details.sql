-- Source: https://web.archive.org/web/20240126082235/https://platform.stratascratch.com/coding/9913-order-details?code_type=5

SELECT
    c.[first_name],
    o.[total_order_cost],
    o.[order_details],
    o.[order_date]
FROM
    customers c
    INNER JOIN orders o ON o.cust_id = c.id
WHERE
    c.[first_name] IN (N'Jill', N'Eva')
ORDER BY
    c.[id] ASC;