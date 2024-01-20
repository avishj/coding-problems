-- Source: https://web.archive.org/web/20240120213229/https://sqlbolt.com/lesson/inserting_rows

INSERT INTO
    movies (title, director, year, length_minutes)
VALUES
    ('Toy Story 4', 'Avish Jha', 2024, 100);

INSERT INTO
    boxoffice (
        movie_id,
        rating,
        domestic_sales,
        international_sales
    )
VALUES
    (15, 8.7, 340 * 1000000, 270 * 1000000);