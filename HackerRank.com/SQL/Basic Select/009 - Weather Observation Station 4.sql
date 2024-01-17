-- Source: https://web.archive.org/web/20240117190413/https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

SELECT
    COUNT(s.city) - COUNT(DISTINCT s.city)
FROM
    station s;