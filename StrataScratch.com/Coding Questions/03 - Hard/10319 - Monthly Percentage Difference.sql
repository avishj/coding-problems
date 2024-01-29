-- Source: https://web.archive.org/web/20240128195523/https://platform.stratascratch.com/coding/10319-monthly-percentage-difference?code_type=5

WITH
    MonthlyRevenue AS (
        SELECT
            SUBSTRING(st.[created_at], 1, 7) AS [month],
            SUM(st.[value]) AS [revenue]
        FROM
            sf_transactions st
        GROUP BY
            SUBSTRING(st.[created_at], 1, 7)
    )
SELECT
    mr.[month],
    ROUND(
        (
            mr.[revenue] - LAG(mr.[revenue]) OVER (
                ORDER BY
                    mr.[month] ASC
            )
        ) * 100.0 / LAG(mr.[revenue]) OVER (
            ORDER BY
                mr.[month] ASC
        ),
        2
    ) AS [mpr]
FROM
    MonthlyRevenue mr;