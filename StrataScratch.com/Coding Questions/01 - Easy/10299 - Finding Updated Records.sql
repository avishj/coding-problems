-- Source: https://web.archive.org/web/20240126083402/https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=5

SELECT
    mes.[id],
    mes.[first_name],
    mes.[last_name],
    mes.[department_id],
    MAX(mes.[salary])
FROM
    ms_employee_salary mes
GROUP BY
    mes.[id],
    mes.[first_name],
    mes.[last_name],
    mes.[department_id]
ORDER BY
    mes.[id] ASC;