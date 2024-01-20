-- Source: https://web.archive.org/web/20240120203939/https://sqlguroo.com/question/19

SELECT
    outer_query.name
FROM
    (
        SELECT
            up.name,
            ROW_NUMBER() OVER (
                ORDER BY
                    up.term_start ASC
            ) AS rn
        FROM
            public.usa_presidents up
        WHERE
            up.occupation = (
                SELECT
                    inner_query.occupation
                FROM
                    (
                        SELECT
                            up.occupation,
                            COUNT(up.occupation),
                            ROW_NUMBER() OVER (
                                ORDER BY
                                    COUNT(up.occupation) DESC,
                                    SUM(up.years_in_office) DESC
                            ) AS rn
                        FROM
                            public.usa_presidents up
                        GROUP BY
                            up.occupation
                    ) AS inner_query
                WHERE
                    inner_query.rn = 2
            )
    ) AS outer_query
WHERE
    outer_query.rn = 3;