-- Source: https://web.archive.org/web/20240118183015/https://sqlguroo.com/question/4

SELECT
    COUNT(o.status)
FROM
    public.orders o
WHERE
    o.status = N'shipped';