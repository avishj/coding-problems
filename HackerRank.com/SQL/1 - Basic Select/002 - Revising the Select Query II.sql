-- Source: https://web.archive.org/web/20240117184629/https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true

SELECT
    c.name
FROM
    city c
WHERE
    c.countrycode = N'USA'
    AND c.population > 120000;