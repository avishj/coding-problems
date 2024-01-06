-- Source: https://archive.is/LcFIE

SELECT
    t.user_id,
    t.tweet_date,
    ROUND(
        AVG(t.tweet_count) OVER (
            PARTITION BY
                t.user_id
            ORDER BY
                t.tweet_date     
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS rolling_avg_3d
FROM
    tweets t;