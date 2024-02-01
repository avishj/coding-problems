-- Source: https://web.archive.org/web/20240206204523/https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=5

SELECT
    t.[worker_title]
FROM
    worker w
    INNER JOIN title t ON t.[worker_ref_id] = w.[worker_id]
WHERE
    w.[salary] = (
        SELECT
            MAX(w.[salary])
        FROM
            worker w
    );