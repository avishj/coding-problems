-- Source: https://archive.is/dBGlS

SELECT
    EXTRACT(MONTH FROM r.submit_date) AS mth,
    r.product_id,
    CAST(AVG(r.stars) AS DECIMAL(3, 2)) AS avg_stars
FROM
    reviews r
GROUP BY
    EXTRACT(MONTH FROM r.submit_date),
    r.product_id
ORDER BY
    EXTRACT(MONTH FROM r.submit_date),
    r.product_id;