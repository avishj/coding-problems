-- Source: https://web.archive.org/web/20240118183826/https://sqlguroo.com/question/8

SELECT
    EXTRACT(
        MONTH
        FROM
            o.order_date
    )
FROM
    public.orders o
WHERE
    o.payment_method IN (N'Credit Card', N'Debit Card')
GROUP BY
    EXTRACT(
        MONTH
        FROM
            o.order_date
    )
ORDER BY
    COUNT(o.order_id) DESC
LIMIT
    1;