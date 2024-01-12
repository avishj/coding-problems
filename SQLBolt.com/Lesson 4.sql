SELECT DISTINCT
    director
FROM
    movies
ORDER BY
    director ASC;

SELECT
    *
FROM
    movies
ORDER BY
    year DESC
LIMIT
    4;

SELECT
    *
FROM
    movies
ORDER BY
    title ASC
LIMIT
    5;

SELECT
    *
FROM
    movies
ORDER BY
    title ASC
LIMIT
    5
OFFSET
    5;