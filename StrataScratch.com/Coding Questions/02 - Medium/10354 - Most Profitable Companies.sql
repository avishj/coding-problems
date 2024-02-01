-- Source: https://web.archive.org/web/20240206204230/https://platform.stratascratch.com/coding/10354-most-profitable-companies?code_type=5

SELECT
    TOP 3 fg.[company],
    fg.[profits]
FROM
    forbes_global_2010_2014 fg
ORDER BY
    fg.[profits] DESC;