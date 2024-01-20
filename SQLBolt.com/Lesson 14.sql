-- Source: https://web.archive.org/web/20240120213341/https://sqlbolt.com/lesson/updating_rows

UPDATE movies
SET
    director = 'John Lasseter'
WHERE
    title = 'A Bug''s Life';

UPDATE movies
SET
    year = 1999
WHERE
    title = 'Toy Story 2';

UPDATE movies
SET
    title = 'Toy Story 3',
    director = 'Lee Unkrich'
WHERE
    title = 'Toy Story 8';