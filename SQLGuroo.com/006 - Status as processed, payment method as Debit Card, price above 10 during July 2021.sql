-- Source: https://web.archive.org/web/20240118183250/https://sqlguroo.com/question/6

SELECT
    COUNT(o.order_id)
FROM
    public.orders o
WHERE
    o.status = N'processed'
    and o.payment_method = N'Debit Card'
    and o.total_price > 10
    and EXTRACT(
        YEAR
        FROM
            o.order_date
    ) = '2021'
    and EXTRACT(
        MONTH
        FROM
            o.order_date
    ) = '07';