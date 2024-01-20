-- Source: https://web.archive.org/web/20240120174643/https://sqlguroo.com/question/16

SELECT
    inner_query.product_name
FROM
    (
        SELECT
            pd.product_name,
            EXTRACT(
                MONTH
                FROM
                    o.order_date
            ) AS "month"
        FROM
            public.orders o
            INNER JOIN public.order_details od ON od.order_id = o.order_id
            INNER JOIN public.product_detail pd ON pd.product_id = od.product_id
        WHERE
            EXTRACT(
                YEAR
                FROM
                    o.order_date
            ) = 2021
    ) AS inner_query
GROUP BY
    inner_query.product_name
HAVING
    COUNT(DISTINCT inner_query.month) > 6;