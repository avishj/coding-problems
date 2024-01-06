-- Source: https://archive.is/4F1yQ

SELECT
    ps.manufacturer,
    CONCAT('$', CAST(ROUND(SUM(ps.total_sales) / 1000000) AS VARCHAR), ' million') AS sales_mil
FROM
    pharmacy_sales ps
GROUP BY
    ps.manufacturer
ORDER BY
    SUM(ps.total_sales) DESC;