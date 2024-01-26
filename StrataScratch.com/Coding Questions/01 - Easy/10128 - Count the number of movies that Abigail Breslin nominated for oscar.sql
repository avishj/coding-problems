-- Source: https://web.archive.org/web/20240126082932/https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=5

SELECT
    SUM(
        CASE
            WHEN osn.[nominee] = N'Abigail Breslin' THEN 1
            ELSE 0
        END
    ) AS [n_movies_by_abi]
FROM
    oscar_nominees osn;