-- Source: https://web.archive.org/web/20240120213221/https://sqlbolt.com/lesson/select_queries_with_outer_joins

SELECT DISTINCT
    building
FROM
    employees;

SELECT
    *
FROM
    buildings;

SELECT DISTINCT
    building_name,
    role
FROM
    buildings
    LEFT JOIN employees ON employees.building = buildings.building_name;