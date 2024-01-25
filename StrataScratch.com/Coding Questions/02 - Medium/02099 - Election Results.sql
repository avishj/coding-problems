-- Source: https://web.archive.org/web/20240121170009/https://platform.stratascratch.com/coding/2099-election-results?code_type=5

WITH
    VotingCounts AS (
        SELECT
            vr.[voter],
            COUNT(DISTINCT vr.[candidate]) AS vote_count
        FROM
            voting_results vr
        GROUP BY
            vr.[voter]
        HAVING
            COUNT(DISTINCT vr.[candidate]) <> 0
    ),
    VotingResultsWithPartialVotes AS (
        SELECT
            vr.[voter],
            vr.[candidate],
            ROUND(1 / vc.[vote_count], 3) AS vote_portion
        FROM
            voting_results vr
            INNER JOIN VotingCounts vc ON vc.[voter] = vr.[voter]
    )
SELECT
    TOP 1 vrwpv.[candidate]
FROM
    VotingResultsWithPartialVotes vrwpv
GROUP BY
    vrwpv.[candidate]
ORDER BY
    SUM(vrwpv.[vote_portion]) DESC;

;