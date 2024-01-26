-- Source: https://web.archive.org/web/20240126083345/https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=5

SELECT
    dbq.[bike_number],
    MAX(dbq.[end_time])
FROM
    dc_bikeshare_q1_2012 dbq
GROUP BY
    dbq.[bike_number]
ORDER BY
    MAX(dbq.[end_time]) DESC;