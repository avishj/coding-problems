-- Source: https://web.archive.org/web/20240118185037/https://sqlguroo.com/question/10

SELECT
    COUNT(DISTINCT od.order_id)
FROM
    public.order_details od
    INNER JOIN public.product_detail pd ON pd.product_id = od.product_id
WHERE
    pd.product_name = N'Avocado Salad';