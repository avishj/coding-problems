SELECT
    name,
    role
FROM
    employees
WHERE
    building IS NULL;

SELECT DISTINCT
    building_name
FROM
    buildings
    LEFT JOIN employees ON employees.building = buildings.building_name
WHERE
    building IS NULL;