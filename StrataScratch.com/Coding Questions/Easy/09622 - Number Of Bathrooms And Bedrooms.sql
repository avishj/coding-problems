-- Source: https://web.archive.org/web/20240121175730/https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=5

SELECT
    asd.[city],
    asd.[property_type],
    AVG(CAST(asd.[bedrooms] AS FLOAT)),
    AVG(CAST(asd.[bathrooms] AS FLOAT))
FROM
    airbnb_search_details asd
GROUP BY
    asd.[city],
    asd.[property_type]
ORDER BY
    asd.[property_type] ASC,
    asd.[city] ASC;