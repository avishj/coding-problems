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