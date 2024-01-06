-- Source: https://archive.is/RCad0

SELECT
    inner_query.manufacturer,
    COUNT(inner_query.loss) AS drug_count,
    SUM(ABS(inner_query.loss)) AS total_loss
FROM (
    SELECT
        ps.manufacturer,
        ps.total_sales - ps.cogs as loss
    FROM
        pharmacy_sales ps
    WHERE
        ps.total_sales - ps.cogs < 0
) AS inner_query
GROUP BY
    inner_query.manufacturer
ORDER BY
    SUM(ABS(inner_query.loss)) DESC;