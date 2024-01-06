-- Source: https://archive.is/cDDIB

SELECT
    ps.drug,
    ps.total_sales - ps.cogs AS total_sales
FROM
    pharmacy_sales ps
ORDER BY
    ps.total_sales - ps.cogs DESC
LIMIT
    3;