-- Source: https://web.archive.org/web/20240121170017/https://platform.stratascratch.com/coding/2102-flags-per-video?code_type=5

WITH
    UniqueValidFlags AS (
        SELECT DISTINCT
            uf.[user_firstname],
            uf.[user_lastname],
            uf.[video_id]
        FROM
            user_flags uf
        WHERE
            uf.[flag_id] IS NOT NULL
    )
SELECT
    uvf.[video_id],
    COUNT(uvf.[video_id]) AS num_unique_users
FROM
    UniqueValidFlags uvf
GROUP BY
    uvf.[video_id];