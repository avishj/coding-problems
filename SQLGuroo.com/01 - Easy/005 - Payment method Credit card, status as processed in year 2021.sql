-- Source: https://web.archive.org/web/20240118183048/https://sqlguroo.com/question/5

SELECT
    COUNT(o.order_id)
FROM
    public.orders o
WHERE
    o.payment_method = N'Credit Card'
    AND EXTRACT(
        YEAR
        FROM
            o.order_date
    ) = '2021'
    AND o.status = N'processed';