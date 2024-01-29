-- Source: https://web.archive.org/web/20240120232840/https://platform.stratascratch.com/coding/2053-retention-rate?code_type=5

-- Wrote this without allowing any assumptions, covers all possible bases. Most answers including the accepted solution have flaws.

WITH
    DecemberUsers AS (
        SELECT DISTINCT
            se.[account_id],
            se.[user_id]
        FROM
            sf_events se
        WHERE
            SUBSTRING(se.[date], 1, 7) = N'2020-12'
    ),
    JanuaryUsers AS (
        SELECT DISTINCT
            se.[account_id],
            se.[user_id]
        FROM
            sf_events se
        WHERE
            SUBSTRING(se.[date], 1, 7) = N'2021-01'
    ),
    DecemberRetainedUsers AS (
        SELECT
            se.[account_id],
            se.[user_id]
        FROM
            sf_events se
        WHERE
            EXISTS (
                SELECT
                    du.*
                FROM
                    DecemberUsers du
                WHERE
                    du.[account_id] = se.[account_id]
                    AND du.[user_id] = se.[user_id]
            )
        GROUP BY
            se.[account_id],
            se.[user_id]
        HAVING
            MAX(se.[date]) > '2020-12-31'
    ),
    JanuaryRetainedUsers AS (
        SELECT
            se.[account_id],
            se.[user_id]
        FROM
            sf_events se
        WHERE
            EXISTS (
                SELECT
                    ju.*
                FROM
                    JanuaryUsers ju
                WHERE
                    ju.[account_id] = se.[account_id]
                    AND ju.[user_id] = se.[user_id]
            )
        GROUP BY
            se.[account_id],
            se.[user_id]
        HAVING
            MAX(se.[date]) > '2021-01-31'
    ),
    DecemberRetention AS (
        SELECT
            du.[account_id],
            ROUND(
                CAST(
                    SUM(
                        CASE
                            WHEN dru.[account_id] IS NOT NULL
                            AND dru.[user_id] IS NOT NULL THEN 1
                            ELSE 0
                        END
                    ) AS FLOAT
                ) / COUNT(*),
                0
            ) AS [retention]
        FROM
            DecemberUsers du
            LEFT JOIN DecemberRetainedUsers dru ON dru.[account_id] = du.[account_id]
            AND dru.[user_id] = du.[user_id]
        GROUP BY
            du.[account_id]
    ),
    JanuaryRetention AS (
        SELECT
            ju.[account_id],
            ROUND(
                CAST(
                    SUM(
                        CASE
                            WHEN jru.[account_id] IS NOT NULL
                            AND jru.[user_id] IS NOT NULL THEN 1
                            ELSE 0
                        END
                    ) AS FLOAT
                ) / COUNT(*),
                0
            ) AS [retention]
        FROM
            JanuaryUsers ju
            LEFT JOIN JanuaryRetainedUsers jru ON jru.[account_id] = ju.[account_id]
            AND jru.[user_id] = ju.[user_id]
        GROUP BY
            ju.[account_id]
    )
SELECT
    COALESCE(dr.[account_id], jr.[account_id]) AS [account_id],
    jr.[retention] / dr.[retention] AS [retention]
FROM
    DecemberRetention dr
    INNER JOIN JanuaryRetention jr ON jr.[account_id] = dr.[account_id];