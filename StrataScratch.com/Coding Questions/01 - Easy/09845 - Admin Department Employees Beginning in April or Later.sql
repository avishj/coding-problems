-- Source: https://web.archive.org/web/20240126081007/https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=5

SELECT
    SUM(
        CASE
            WHEN DATEPART(MONTH, w.[joining_date]) >= 4
            AND w.[department] = N'Admin' THEN 1
            ELSE 0
        END
    ) AS [n_admins]
FROM
    worker w;