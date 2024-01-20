-- Source: https://web.archive.org/web/20240120213150/https://sqlbolt.com/lesson/select_queries_with_joins

SELECT
    title,
    domestic_sales,
    international_sales
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id;

SELECT
    title,
    domestic_sales,
    international_sales
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id
WHERE
    international_sales > domestic_sales;

SELECT
    title
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id
ORDER BY
    rating DESC;