-- Source: https://archive.is/gam3R

SELECT
    inner_query.user_id,
    inner_query.spend,
    inner_query.transaction_date
FROM (
    SELECT
        t.user_id,
        t.spend,
        t.transaction_date,
        ROW_NUMBER() OVER (
            PARTITION BY 
                t.user_id 
            ORDER BY 
                t.transaction_date ASC
        ) AS rn
    FROM 
        transactions t
) AS inner_query
WHERE
    rn = 3;