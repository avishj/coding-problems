-- Source: https://web.archive.org/web/20240120222829/https://platform.stratascratch.com/coding/2005-share-of-active-users?code_type=5

SELECT
    ROUND(
        SUM(
            CASE
                WHEN fac.[status] = N 'open' THEN 1
                ELSE 0
            END
        ) * 1.0 / COUNT(fac.[status]),
        1
    )
FROM
    fb_active_users fac;