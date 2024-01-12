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