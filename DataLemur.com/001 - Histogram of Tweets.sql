-- Source: https://archive.is/0AJG8

SELECT
    inner_query.tweet_bucket,
    COUNT(inner_query.user_id) AS users_num
FROM (
    SELECT
        t.user_id,
        COUNT(t.tweet_id) AS tweet_bucket
    FROM
        tweets t
    WHERE
        EXTRACT(YEAR FROM t.tweet_date) = '2022'
    GROUP BY
        t.user_id
) AS inner_query
GROUP BY
    inner_query.tweet_bucket
ORDER BY
    inner_query.tweet_bucket ASC;