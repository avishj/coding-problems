-- Source: https://web.archive.org/web/20240123181243/https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=5

SELECT
    larhi.[activity_date],
    larhi.[pe_description]
FROM
    los_angeles_restaurant_health_inspections larhi
WHERE
    larhi.[facility_name] = N'STREET CHURROS'
    AND larhi.[score] < 95;