-- Source: https://web.archive.org/web/20240118183826/https://sqlguroo.com/question/9

SELECT
    o.payment_method,
    SUM(inner_query.product_count)
FROM
    public.orders o
    INNER JOIN (
        SELECT
            od.order_id,
            COUNT(od.product_id) AS product_count
        FROM
            public.order_details od
        GROUP BY
            od.order_id
    ) inner_query ON inner_query.order_id = o.order_id
GROUP BY
    o.payment_method;