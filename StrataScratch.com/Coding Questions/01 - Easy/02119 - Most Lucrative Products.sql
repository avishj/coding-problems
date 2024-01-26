-- Source: https://web.archive.org/web/20240121175433/https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=5

SELECT
    TOP 5 oo.[product_id],
    SUM(oo.[cost_in_dollars] * oo.[units_sold]) AS [revenue]
FROM
    online_orders oo
WHERE
    DATEPART(MONTH, oo.[date]) BETWEEN 1 AND 6
GROUP BY
    oo.[product_id]
ORDER BY
    SUM(oo.[cost_in_dollars] * oo.[units_sold]) DESC;