-- Source: https://archive.is/ZqGZ1

SELECT
    SUM (
        CASE
            WHEN v.device_type = N'laptop' THEN 1
            ELSE 0
        END
    ) AS laptop_views,
    SUM (
        CASE
            WHEN v.device_type IN (N'tablet', N'phone') THEN 1
            ELSE 0
        END
     ) AS mobile_views
FROM
    viewership v;