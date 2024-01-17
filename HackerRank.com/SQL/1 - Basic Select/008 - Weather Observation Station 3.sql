-- Source: https://web.archive.org/web/20240117190029/https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true

SELECT
    DISTINCT s.city
FROM
    station s
WHERE
    s.id % 2 = 0;