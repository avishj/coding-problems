-- Source: https://web.archive.org/web/20240128195811/https://platform.stratascratch.com/coding/10046-top-5-states-with-5-star-businesses?code_type=5

WITH
    StateAndFiveStarCount AS (
        SELECT
            yb.[state],
            SUM(
                CASE
                    WHEN yb.[stars] = 5 THEN 1
                    ELSE 0
                END
            ) AS [n_businesses]
        FROM
            yelp_business yb
        GROUP BY
            yb.[state]
    )
SELECT
    safsc.[state],
    safsc.[n_businesses]
FROM
    StateAndFiveStarCount safsc
WHERE
    safsc.[n_businesses] IN (
        SELECT
            TOP 5 safsc.[n_businesses]
        FROM
            StateAndFiveStarCount safsc
        ORDER BY
            safsc.[n_businesses] DESC
    )
ORDER BY
    safsc.[n_businesses] DESC,
    safsc.[state] ASC;