-- Source: https://web.archive.org/web/20240126082642/https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=5

SELECT
    fe.[location],
    AVG(CAST(fhs.[popularity] AS FLOAT))
FROM
    facebook_employees fe
    INNER JOIN facebook_hack_survey fhs ON fhs.[employee_id] = fe.[id]
GROUP BY
    fe.[location];