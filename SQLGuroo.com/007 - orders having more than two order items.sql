-- Source: https://web.archive.org/web/20240118183248/https://sqlguroo.com/question/7

SELECT
    COUNT(*)
FROM
    (
        SELECT
            COUNT(od.order_id) AS count
        FROM
            public.order_details od
        GROUP BY
            od.order_id
    ) AS inner_query
WHERE
    inner_query.count > 2;