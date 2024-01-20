-- Source: https://web.archive.org/web/20240120213229/https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2

SELECT
    *
FROM
    movies
WHERE
    title LIKE '%Toy Story%';

SELECT
    *
FROM
    movies
WHERE
    director = 'John Lasseter';

SELECT
    *
FROM
    movies
WHERE
    director <> 'John Lasseter';

SELECT
    *
FROM
    movies
WHERE
    title LIKE 'WALL-%';