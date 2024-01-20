-- Source: https://web.archive.org/web/20240120201042/https://sqlguroo.com/question/17

SELECT
    inner_query.customer_id
FROM
    (
        SELECT
            o.customer_id,
            ROW_NUMBER() OVER (
                PARTITION BY
                    EXTRACT(
                        MONTH
                        FROM
                            o.order_date
                    )
                ORDER BY
                    o.order_date DESC
            ) AS "rn"
        FROM
            public.orders o
        WHERE
            EXTRACT(
                YEAR
                FROM
                    o.order_date
            ) = 2020
            AND EXTRACT(
                MONTH
                FROM
                    o.order_date
            ) = 7
    ) AS inner_query
WHERE
    inner_query.rn = 2;