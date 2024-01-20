-- Source: https://web.archive.org/web/20240120201044/https://sqlguroo.com/question/18

SELECT
    COUNT(inner_query.*)
FROM
    (
        SELECT
            up.name,
            up.born - LAG(up.born) OVER (
                ORDER BY
                    up.term_start ASC
            ) AS born_difference
        FROM
            public.usa_presidents up
    ) AS inner_query
WHERE
    inner_query.born_difference < 0;