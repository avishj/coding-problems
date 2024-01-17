-- Source: https://web.archive.org/web/20240117185507/https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true

SELECT
    c.name
FROM
    city c
WHERE
    c.countrycode = N'JPN';