-- Source: https://web.archive.org/web/20240130161339/https://platform.stratascratch.com/coding/2104-user-with-most-approved-flags?code_type=5

WITH
    ApprovedFlagsCount AS (
        SELECT
            CONCAT(uf.[user_firstname], ' ', uf.[user_lastname]) AS [username],
            COUNT(DISTINCT uf.[video_id]) AS [count]
        FROM
            user_flags uf
            INNER JOIN flag_review fr ON fr.[flag_id] = uf.[flag_id]
        WHERE
            fr.[reviewed_outcome] = N'APPROVED'
        GROUP BY
            CONCAT(uf.[user_firstname], ' ', uf.[user_lastname])
    )
SELECT
    afc.[username]
FROM
    ApprovedFlagsCount afc
WHERE
    afc.[count] IN (
        SELECT
            MAX(afc.[count])
        FROM
            ApprovedFlagsCount afc
    );