-- Source: https://web.archive.org/web/20240120230131/https://platform.stratascratch.com/coding/2029-the-most-popular-client_id-among-users-using-video-and-voice-calls?code_type=5

WITH
    PercentageCalls AS (
        SELECT
            fe.[user_id],
            SUM(
                CASE
                    WHEN fe.[event_type] IN (N'video call received', N'video call sent', N'voice call received', N'voice call sent') THEN 1
                    ELSE 0
                END
            ) * 100.0 / COUNT(fe.[event_type]) AS [percent_calls]
        FROM
            fact_events fe
        GROUP BY
            fe.[user_id]
    )
SELECT
    TOP 1 fe.[client_id]
FROM
    fact_events fe
    INNER JOIN PercentageCalls pc ON pc.[user_id] = fe.[user_id]
WHERE
    pc.[percent_calls] >= 50
GROUP BY
    fe.[client_id]
ORDER BY
    COUNT(fe.[client_id]) DESC;