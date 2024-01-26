-- Source: https://web.archive.org/web/20240126082436/https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=5

SELECT
    sps.[employeename],
    sps.[basepay]
FROM
    sf_public_salaries sps
WHERE
    sps.[jobtitle] = N'CAPTAIN III (POLICE DEPARTMENT)';