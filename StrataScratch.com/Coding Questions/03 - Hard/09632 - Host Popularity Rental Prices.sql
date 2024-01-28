-- Source: https://web.archive.org/web/20240128200212/https://platform.stratascratch.com/coding/9632-host-popularity-rental-prices?code_type=5

WITH
    DistinctHostPopularityPrice AS (
        SELECT
            CASE
                WHEN ahs.[number_of_reviews] = 0 THEN 'New'
                WHEN ahs.[number_of_reviews] BETWEEN 1 AND 5  THEN 'Rising'
                WHEN ahs.[number_of_reviews] BETWEEN 6 AND 15  THEN 'Trending Up'
                WHEN ahs.[number_of_reviews] BETWEEN 16 AND 40  THEN 'Popular'
                WHEN ahs.[number_of_reviews] > 40 THEN 'Hot'
                ELSE NULL
            END AS [pop_rating],
            AVG(ahs.[price]) AS [price]
        FROM
            airbnb_host_searches ahs
        GROUP BY
            ahs.[price],
            ahs.[room_type],
            ahs.[host_since],
            ahs.[zipcode],
            ahs.[number_of_reviews]
    )
SELECT
    dhpp.[pop_rating],
    MIN(dhpp.[price]) AS [min_p],
    AVG(dhpp.[price]) AS [avg_p],
    MAX(dhpp.[price]) AS [max_p]
FROM
    DistinctHostPopularityPrice dhpp
GROUP BY
    dhpp.[pop_rating];