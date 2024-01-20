-- Source: https://web.archive.org/web/20240120213225/https://sqlbolt.com/lesson/select_queries_order_of_execution

SELECT
    director,
    COUNT(*) AS number_of_movies
FROM
    movies
GROUP BY
    director;

SELECT
    director,
    SUM(domestic_sales) + SUM(international_sales) AS total_sales
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id
GROUP BY
    director;