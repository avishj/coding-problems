-- Source: https://web.archive.org/web/20240121091200/https://platform.stratascratch.com/coding/2097-premium-acounts?code_type=5

WITH
    LeadingPriceDetails AS (
        SELECT
            pabd.[entry_date],
            pabd.[account_id],
            pabd.[final_price],
            LEAD(pabd.[final_price], 7) OVER (
                PARTITION BY
                    pabd.[account_id]
                ORDER BY
                    pabd.[entry_date] ASC
            ) AS [price_7d_later]
        FROM
            premium_accounts_by_day pabd
    )
SELECT
    lpd.[entry_date],
    SUM(
        CASE
            WHEN lpd.[final_price] <> 0
            AND lpd.[final_price] IS NOT NULL THEN 1
            ELSE 0
        END
    ) AS [premium_paid_accounts],
    SUM(
        CASE
            WHEN lpd.[price_7d_later] <> 0
            AND lpd.[price_7d_later] IS NOT NULL THEN 1
            ELSE 0
        END
    ) AS [premium_paid_accounts_after_7d]
FROM
    LeadingPriceDetails lpd
WHERE
    lpd.[entry_date] BETWEEN N'2022-02-07' AND N'2022-02-13'
GROUP BY
    lpd.[entry_date];