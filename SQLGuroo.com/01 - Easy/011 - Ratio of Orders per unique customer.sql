-- Source: https://web.archive.org/web/20240118185201/https://sqlguroo.com/question/11

SELECT
    o.payment_method,
    ROUND(COUNT(o.order_id) * 1.0 / COUNT(DISTINCT o.customer_id), 1) AS ratio
FROM
    public.orders o
GROUP BY
    o.payment_method;