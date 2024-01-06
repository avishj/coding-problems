-- Source:
SELECT
    ab.age_bucket,
    ROUND (
        SUM (
            CASE
                WHEN a.activity_type = N'send' THEN a.time_spent
            END
        ) * 100.0 / (
            SUM(
                CASE
                    WHEN a.activity_type = N'send' THEN a.time_spent
                END
            ) + SUM(
                CASE
                    WHEN a.activity_type = N'open' THEN a.time_spent
                END
            )
        ),
        2
    ) AS send_perc,
    ROUND (
        SUM (
            CASE
                WHEN a.activity_type = N'open' THEN a.time_spent
            END
        ) * 100.0 / (
            SUM(
                CASE
                    WHEN a.activity_type = N'send' THEN a.time_spent
                END
            ) + SUM(
                CASE
                    WHEN a.activity_type = N'open' THEN a.time_spent
                END
            )
        ),
        2
    ) AS open_perc
FROM
    activities a
INNER JOIN age_breakdown ab ON ab.user_id = a.user_id
GROUP BY
    ab.age_bucket;