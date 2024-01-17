-- Source: https://web.archive.org/web/20240117184247/https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true

SELECT
    *
FROM
    city c
WHERE
    c.countrycode = N'USA'
    AND c.population > 100000;