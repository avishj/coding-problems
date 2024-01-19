-- Source: https://web.archive.org/web/20240118182841/https://sqlguroo.com/question/2

SELECT
    ROUND(AVG(o.total_price), 2) AS avg_total_price
FROM
    public.orders o;