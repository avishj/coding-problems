-- Source: https://web.archive.org/web/20240128200223/https://platform.stratascratch.com/coding/9633-city-with-most-amenities?code_type=5

WITH
    DistinctHostCityAndAmenityCountMinusOne AS (
        SELECT
            asd.[city],
            LEN(asd.[amenities]) - LEN(REPLACE(asd.[amenities], ',', '')) AS [amenities_count] -- Counts 1 less than actual as commas are always 1 less than what they are separating
        FROM
            airbnb_search_details asd
    )
SELECT
    TOP 1 dhcaacmo.[city]
FROM
    DistinctHostCityAndAmenityCountMinusOne dhcaacmo
GROUP BY
    dhcaacmo.[city]
ORDER BY
    SUM(dhcaacmo.[amenities_count]) DESC;