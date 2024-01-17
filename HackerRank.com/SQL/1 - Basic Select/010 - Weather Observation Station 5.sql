-- Source: https://web.archive.org/web/20240117190610/https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

WITH RankedCities AS (
    SELECT
        s.city,
        LEN(s.city) AS city_length,
        ROW_NUMBER() OVER (ORDER BY LEN(s.city) ASC, s.city) AS AscRank,
        ROW_NUMBER() OVER (ORDER BY LEN(s.city) DESC, s.city) AS DescRank
    FROM
        station s
)
SELECT
    rc.city,
    rc.city_length
FROM
    RankedCities rc
WHERE
    AscRank = 1
    OR DescRank = 1;