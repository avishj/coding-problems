-- Source: https://archive.is/gxED8

SELECT
    inner_query.app_id,
    CAST (
        (100.0 * inner_query.clicks_count / inner_query.impressions_count) 
        AS DECIMAL(4, 2)
    ) AS ctr
FROM (
    SELECT
        e.app_id,
        SUM (
            CASE
                WHEN e.event_type = N'impression' THEN 1
                ELSE 0
            END
        ) AS impressions_count,
        SUM (
            CASE
                WHEN e.event_type = N'click' THEN 1
                ELSE 0
            END
        ) AS clicks_count
    FROM
        events e
    WHERE
        EXTRACT(YEAR FROM e.timestamp) = '2022'
    GROUP BY
        e.app_id
) AS inner_query;