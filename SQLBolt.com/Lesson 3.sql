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