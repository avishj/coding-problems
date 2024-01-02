-- Source: https://archive.is/Vve5p

SELECT
    p.user_id,
    EXTRACT(DAY FROM MAX(p.post_date) - MIN(p.post_date))
FROM
    posts p
WHERE
    EXTRACT(YEAR FROM p.post_date) = '2021'
GROUP BY
    p.user_id
HAVING
    COUNT(p.post_id) > 2;