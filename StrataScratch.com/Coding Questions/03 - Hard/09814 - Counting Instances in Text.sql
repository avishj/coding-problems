-- Source: https://web.archive.org/web/20240128195825/https://platform.stratascratch.com/coding/9814-counting-instances-in-text?code_type=5

-- Beware, the solution given by StrataScratch is wrong, as it counts whether 
-- or not a text contains the word 'bull' or 'bear', instead of counting the 
-- number of 'bull' and 'bear' (as in multiple can be present and have to be counted separately.)

SELECT
    'bull',
    SUM((LEN(gfs.[contents]) - LEN(REPLACE(gfs.[contents], ' bull', ''))) / 5) AS [count]
FROM
    google_file_store gfs
UNION ALL
SELECT
    'bear',
    SUM((LEN(gfs.[contents]) - LEN(REPLACE(gfs.[contents], ' bear', ''))) / 5) AS [count]
FROM
    google_file_store gfs;