-- Source: https://archive.is/8ckOL

SELECT
    COUNT(DISTINCT inner_query.company_id)
FROM (
    SELECT
        jl.company_id,
        COUNT(jl.job_id) AS instance_count
    FROM
        job_listings jl
    GROUP BY
        jl.company_id, jl.title, jl.description
) AS inner_query
WHERE
    inner_query.instance_count > 1;