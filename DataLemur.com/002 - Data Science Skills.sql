-- Source: https://archive.is/Ty4dx

SELECT
    c.candidate_id
FROM
    candidates c
WHERE
    c.skill = N'Python'
INTERSECT
SELECT
    c.candidate_id
FROM
    candidates c
WHERE
    c.skill = N'Tableau'
INTERSECT
SELECT
    c.candidate_id
FROM
    candidates c
WHERE
    c.skill = N'PostgreSQL'
ORDER BY
    1 ASC;