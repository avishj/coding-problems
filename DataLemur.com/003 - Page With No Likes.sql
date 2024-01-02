-- Source:

SELECT
    p.page_id
FROM
    pages p
WHERE NOT EXISTS (
    SELECT
        pl.page_id -- No DISTINCT as duplicates are irrelevant.
    FROM
        page_likes pl
    WHERE
        p.page_id = pl.page_id
)
ORDER BY
    p.page_id ASC;