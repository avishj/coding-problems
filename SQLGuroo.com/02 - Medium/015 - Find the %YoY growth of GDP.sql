-- Source: https://web.archive.org/web/20240120174524/https://sqlguroo.com/question/15

SELECT
    inner_query.year,
    inner_query.yoy
FROM
    (
        SELECT
            ug.year,
            CONCAT(
                CAST(
                    ROUND(
                        (
                            ug.gdp - LAG(ug.gdp) OVER (
                                ORDER BY
                                    ug.year ASC
                            )
                        ) * 100.0 / LAG(ug.gdp) OVER (
                            ORDER BY
                                ug.year ASC
                        ),
                        2
                    ) AS VARCHAR(5)
                ),
                '%'
            ) AS yoy
        FROM
            public.usa_gdp ug
    ) AS inner_query
WHERE
    inner_query.year BETWEEN 1970 AND 1980;