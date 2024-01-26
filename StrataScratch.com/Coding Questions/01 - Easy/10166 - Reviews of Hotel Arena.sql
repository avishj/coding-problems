-- Source: https://web.archive.org/web/20240126083101/https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=5

SELECT
    hr.[hotel_name],
    hr.[reviewer_score],
    COUNT(hr.[reviewer_score])
FROM
    hotel_reviews hr
WHERE
    hr.[hotel_name] = N'Hotel Arena'
GROUP BY
    hr.[hotel_name],
    hr.[reviewer_score];