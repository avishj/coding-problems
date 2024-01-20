-- Source: https://web.archive.org/web/20240118185227/https://sqlguroo.com/question/12 

-- NOTE: The question has a mistake and states in the main question to give details for 
-- different payment_method's whereas in the example, it gives the details for different 
-- status instead. Neither of the given solutions give the correct answer, and there is 
-- no way to verify the correct output.

SELECT
    pd.product_name,
    SUM(
        CASE
            WHEN o.status = N'processed' THEN 1
            ELSE 0
        END
    ) AS processed_orders,
    SUM(
        CASE
            WHEN o.status = N'pending' THEN 1
            ELSE 0
        END
    ) AS pending_orders,
    SUM(
        CASE
            WHEN o.status = N'shipped' THEN 1
            ELSE 0
        END
    ) AS shipped_orders,
    SUM(
        CASE
            WHEN o.status = N'cancelled' THEN 1
            ELSE 0
        END
    ) AS cancelled_orders
FROM
    public.orders o
    INNER JOIN public.order_details od ON od.order_id = o.order_id
    INNER JOIN public.product_detail pd ON pd.product_id = od.product_id
WHERE
    pd.product_name = N'Green Leaf Lettuce'
GROUP BY
    pd.product_name;

SELECT
    pd.product_name,
    SUM(
        CASE
            WHEN o.payment_method = N'Debit Card' THEN 1
            ELSE 0
        END
    ) AS debit_card_orders,
    SUM(
        CASE
            WHEN o.payment_method = N'PayMe' THEN 1
            ELSE 0
        END
    ) AS payme_orders,
    SUM(
        CASE
            WHEN o.payment_method = N'Credit Card' THEN 1
            ELSE 0
        END
    ) AS credit_card_orders,
    SUM(
        CASE
            WHEN o.payment_method = N'cash' THEN 1
            ELSE 0
        END
    ) AS cash_orders
FROM
    public.orders o
    INNER JOIN public.order_details od ON od.order_id = o.order_id
    INNER JOIN public.product_detail pd ON pd.product_id = od.product_id
WHERE
    pd.product_name = N'Green Leaf Lettuce'
GROUP BY
    pd.product_name;
