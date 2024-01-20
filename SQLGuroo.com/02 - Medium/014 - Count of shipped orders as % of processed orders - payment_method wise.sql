-- Source: https://web.archive.org/web/20240120130704/https://sqlguroo.com/question/14

SELECT
    o.payment_method,
    CONCAT(
        CAST(
            ROUND(
                SUM(
                    CASE
                        WHEN o.status = N 'shipped' THEN 1
                        ELSE 0
                    END
                ) * 100.0 / SUM(
                    CASE
                        WHEN o.status = N 'processed' THEN 1
                        ELSE 0
                    END
                ),
                2
            ) AS VARCHAR(5)
        ),
        '%'
    ) AS percentage_shipped_of_processed
FROM
    public.orders o
GROUP BY
    o.payment_method;