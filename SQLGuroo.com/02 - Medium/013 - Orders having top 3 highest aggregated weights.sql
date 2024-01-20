-- Source: https://web.archive.org/web/20240120130631/https://sqlguroo.com/question/13
SELECT
    o.order_id
FROM
    public.orders o
    INNER JOIN public.order_details od ON od.order_id = o.order_id
    INNER JOIN public.product_detail pd ON pd.product_id = od.product_id
GROUP BY
    o.order_id
ORDER BY
    SUM(pd.weight) desc
LIMIT
    3;