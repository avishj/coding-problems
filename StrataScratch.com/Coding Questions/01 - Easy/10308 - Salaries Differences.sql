-- Source: https://web.archive.org/web/20240126083346/https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=5

SELECT
    ABS(
        MAX(
            CASE
                WHEN dd.[department] = N'engineering' THEN de.[salary]
                ELSE NULL
            END
        ) - MAX(
            CASE
                WHEN dd.[department] = N'marketing' THEN de.[salary]
                ELSE NULL
            END
        )
    ) AS [salary_difference]
FROM
    db_employee de
    INNER JOIN db_dept dd ON dd.[id] = de.[department_id];