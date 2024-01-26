-- Source: https://web.archive.org/web/20240126081007/https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department?code_type=5

SELECT
    w.[department],
    SUM(
        CASE
            WHEN DATEPART(MONTH, w.[joining_date]) >= 4 THEN 1
            ELSE 0
        END
    )
FROM
    worker w
GROUP BY
    w.[department]
ORDER BY
    SUM(
        CASE
            WHEN DATEPART(MONTH, w.[joining_date]) >= 4 THEN 1
            ELSE 0
        END
    ) DESC;