-- Source: https://web.archive.org/web/20240126082503/https://platform.stratascratch.com/coding/9917-average-salaries?code_type=5

SELECT
    e.[department],
    e.[first_name],
    e.[salary],
    AVG(e.[salary]) OVER (
        PARTITION BY
            e.[department]
    )
FROM
    employee e;