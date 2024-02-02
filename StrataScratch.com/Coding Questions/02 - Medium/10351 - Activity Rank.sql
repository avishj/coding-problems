-- Source: https://web.archive.org/web/20240206211351/https://platform.stratascratch.com/coding/10351-activity-rank?code_type=5

WITH
    UserEmailCounts AS (
        SELECT
            gge.[from_user],
            COUNT(gge.[from_user]) AS [total_emails]
        FROM
            google_gmail_emails gge
        GROUP BY
            gge.[from_user]
    )
SELECT
    uec.[from_user],
    uec.[total_emails],
    ROW_NUMBER() OVER (
        ORDER BY
            uec.[total_emails] DESC,
            uec.[from_user] ASC
    ) AS [row_number]
FROM
    UserEmailCounts uec
ORDER BY
    uec.[total_emails] DESC;