-- Source: https://web.archive.org/web/20240128195528/https://platform.stratascratch.com/coding/10303-top-percentile-fraud?code_type=5

WITH
    FraudScoreWithPercentile AS (
        SELECT
            fs.[policy_num],
            fs.[state],
            fs.[claim_cost],
            fs.[fraud_score],
            PERCENT_RANK() OVER (
                PARTITION BY
                    fs.[state]
                ORDER BY
                    fs.[fraud_score] DESC
            ) AS [prn]
        FROM
            fraud_score fs
    )
SELECT
    fswp.[policy_num],
    fswp.[state],
    fswp.[claim_cost],
    fswp.[fraud_score]
FROM
    FraudScoreWithPercentile fswp
WHERE
    fswp.[prn] <= 0.05;