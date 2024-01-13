SELECT
    role,
    COUNT(role) AS role_count
FROM
    employees
WHERE
    role = 'Artist';

SELECT
    role,
    COUNT(role) AS role_count
FROM
    employees
GROUP BY
    role;

SELECT
    role,
    SUM(years_employed) AS total_years_employed
FROM
    employees
WHERE
    role = 'Engineer'
GROUP BY
    role;