SELECT
    MAX(years_employed) AS max_years_employed
FROM
    employees;

SELECT
    role,
    AVG(years_employed) AS avg_years_employed
FROM
    employees
GROUP BY
    role;

SELECT
    building,
    SUM(years_employed) AS total_employee_years
FROM
    employees
GROUP BY
    building;