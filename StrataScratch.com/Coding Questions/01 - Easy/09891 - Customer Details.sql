-- Source: https://web.archive.org/web/20240126082131/https://platform.stratascratch.com/coding/9891-customer-details?code_type=5

SELECT
    c.[first_name],
    c.[last_name],
    c.[city],
    o.[order_details]
FROM
    customers c
    LEFT JOIN orders o ON o.cust_id = c.id
ORDER BY
    c.[first_name],
    o.[order_details] ASC;