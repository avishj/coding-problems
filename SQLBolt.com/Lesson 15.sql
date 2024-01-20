-- Source: https://web.archive.org/web/20240120213213/https://sqlbolt.com/lesson/deleting_rows

DELETE FROM movies
WHERE
    year < 2005;

DELETE FROM movies
WHERE
    director = 'Andrew Stanton';