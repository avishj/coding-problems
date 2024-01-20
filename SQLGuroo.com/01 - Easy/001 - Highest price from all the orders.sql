-- Source: https://web.archive.org/web/20240118182353/https://sqlguroo.com/question/1

SELECT
    o.order_id
FROM
    public.orders o
ORDER BY
    o.total_price DESC
LIMIT
    1;