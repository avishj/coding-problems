-- Source: https://web.archive.org/web/20240123181234/https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=5

SELECT
    TOP 1 fg.[company],
    fg.[continent]
FROM
    forbes_global_2010_2014 fg
WHERE
    fg.[sector] = N'Financials'
ORDER BY
    fg.[profits] DESC;