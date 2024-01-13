SELECT
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id;

SELECT
    title,
    rating * 10 AS ratings_in_percent
FROM
    movies
    INNER JOIN boxoffice ON boxoffice.movie_id = movies.id;

SELECT
    title 
FROM 
    movies 
WHERE 
    year % 2 = 0;