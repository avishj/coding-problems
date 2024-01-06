SELECT
    *
FROM
    movies
WHERE
    id = 6;

SELECT
    *
FROM
    movies
WHERE
    year BETWEEN 2000 AND 2010;

SELECT
    *
FROM
    movies
WHERE
    year NOT BETWEEN 2000 AND 2010;

SELECT
    *
FROM
    movies
ORDER BY
    year ASC
LIMIT
    5;