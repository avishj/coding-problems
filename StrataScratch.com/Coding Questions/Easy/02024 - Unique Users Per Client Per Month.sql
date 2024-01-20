-- Source: https://web.archive.org/web/20240120230119/https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=5

SELECT
    fe.[client_id],
    DATEPART(MONTH, fe.[time_id]) AS [month],
    COUNT(DISTINCT fe.[user_id]) AS [users_num]
FROM
    fact_events fe
GROUP BY
    fe.[client_id],
    DATEPART(MONTH, fe.[time_id]);