-- Source: https://web.archive.org/web/20240121091147/https://platform.stratascratch.com/coding/2089-cookbook-recipes?code_type=5

DECLARE @maxPage INT = (
    SELECT
        MAX(ct.[page_number])
    FROM
        cookbook_titles ct
);

DECLARE @startPage INT = 0;

WITH
    GeneratedPageNumbers AS (
        SELECT
            @startPage AS [left_page_number],
            @startPage + 1 AS [right_page_number]
        UNION ALL
        SELECT
            [left_page_number] + 2 AS [left_page_number],
            [right_page_number] + 2 AS [right_page_number]
        FROM
            GeneratedPageNumbers
        WHERE
            [left_page_number] + 2 <= @maxPage
    )
SELECT
    gpn.[left_page_number],
    ct_lt.[title] AS [left_title],
    ct_rt.[title] AS [right_title]
FROM
    GeneratedPageNumbers gpn
    LEFT JOIN cookbook_titles ct_lt ON ct_lt.[page_number] = gpn.[left_page_number]
    LEFT JOIN cookbook_titles ct_rt ON ct_rt.[page_number] = gpn.[right_page_number] 
OPTION 
    (MAXRECURSION 0);