-- Source: https://web.archive.org/web/20240126082619/https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=5

SELECT
    *
FROM
    lyft_drivers ld
WHERE
    ld.[yearly_salary] <= 30000
    OR ld.[yearly_salary] > 70000;