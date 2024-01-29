-- Source: https://web.archive.org/web/20240128195658/https://platform.stratascratch.com/coding/10300-premium-vs-freemium?code_type=5

SELECT
    mdf.[date],
    SUM(
        CASE
            WHEN mad.[paying_customer] = N'yes' THEN mdf.[downloads]
            ELSE 0
        END
    ) AS [paying],
    SUM(
        CASE
            WHEN mad.[paying_customer] = N'no' THEN mdf.[downloads]
            ELSE 0
        END
    ) AS [non_paying]
FROM
    ms_user_dimension mud
    INNER JOIN ms_acc_dimension mad ON mad.[acc_id] = mud.[acc_id]
    INNER JOIN ms_download_facts mdf ON mdf.[user_id] = mud.[user_id]
GROUP BY
    mdf.[date]
HAVING
    SUM(
        CASE
            WHEN mad.[paying_customer] = N'no' THEN mdf.[downloads]
            ELSE 0
        END
    ) > SUM(
        CASE
            WHEN mad.[paying_customer] = N'yes' THEN mdf.[downloads]
            ELSE 0
        END
    )
ORDER BY
    mdf.[date] ASC;