-- Source: https://web.archive.org/web/20240128195841/https://platform.stratascratch.com/coding/10284-popularity-percentage?code_type=5

WITH
    AllFriendships AS (
        SELECT
            ff.[user1] AS [user]
        FROM
            facebook_friends ff
        UNION ALL
        SELECT
            ff.[user2] AS [user]
        FROM
            facebook_friends ff
    ),
    TotalUsers AS (
        SELECT
            COUNT(DISTINCT af.[user]) AS [total_users]
        FROM
            AllFriendships af
    )
SELECT
    af.[user],
    COUNT(af.[user]) * 100.0 / (
        SELECT
            [total_users]
        FROM
            TotalUsers
    ) AS friendship_percentage
FROM
    AllFriendships af
GROUP BY
    af.[user]
ORDER BY
    af.[user] ASC;
