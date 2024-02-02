-- Source: https://web.archive.org/web/20240206205231/https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?code_type=5

WITH
    DayWiseUserSessionLogs AS (
        SELECT
            fwl.[user_id],
            CAST(fwl.[timestamp] AS DATE) AS [date],
            MAX(
                CASE
                    WHEN fwl.[action] = N'page_load' THEN fwl.[timestamp]
                    ELSE NULL
                END
            ) AS [first_page_load],
            MIN(
                CASE
                    WHEN fwl.[action] = N'page_exit' THEN fwl.[timestamp]
                    ELSE NULL
                END
            ) AS [last_page_exit]
        FROM
            facebook_web_log fwl
        GROUP BY
            fwl.[user_id],
            CAST(fwl.[timestamp] AS DATE)
    )
SELECT
    dwusl.[user_id],
    AVG(CAST(DATEDIFF(SECOND, dwusl.[first_page_load], dwusl.[last_page_exit]) AS FLOAT))
FROM
    DayWiseUserSessionLogs dwusl
WHERE
    DATEDIFF(SECOND, dwusl.[first_page_load], dwusl.[last_page_exit]) > 0
GROUP BY
    dwusl.[user_id];