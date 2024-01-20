-- Source: https://web.archive.org/web/20240120222841/https://platform.stratascratch.com/coding/514-marketing-campaign-success-advanced?code_type=5

WITH FirstPurchaseDate AS (
    SELECT
        mc.[user_id],
        MIN(mc.[created_at]) AS [first_purchase_date]
    FROM
        marketing_campaign mc
    GROUP BY
        mc.[user_id]
), OtherDatePurchasesWithDifferentProducts AS (
    SELECT
        mc.[user_id],
        mc.[product_id]
    FROM
        marketing_campaign mc
        INNER JOIN FirstPurchaseDate fpd ON fpd.[user_id] = mc.[user_id]
    WHERE
        mc.[created_at] <> fpd.[first_purchase_date]
        AND mc.[product_id] NOT IN (
            SELECT
                imc.[product_id]
            FROM
                marketing_campaign imc
            WHERE
                imc.[user_id] = fpd.[user_id]
                AND imc.[created_at] = fpd.[first_purchase_date]
        )
)
SELECT
    COUNT(DISTINCT odpwdp.[user_id]) AS [count]
FROM
    OtherDatePurchasesWithDifferentProducts odpwdp;