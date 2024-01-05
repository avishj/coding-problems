-- Source: https://archive.is/xFpXo

SELECT
    u.city,
    COUNT(t.status)
FROM
    users u
INNER JOIN trades t ON t.user_id = u.user_id
WHERE
    t.status = N'Completed'
GROUP BY
    u.city
ORDER BY
    COUNT(t.status) DESC
LIMIT
    3;