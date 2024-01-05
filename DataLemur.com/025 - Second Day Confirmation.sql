-- Source: https://archive.is/JQTh5

SELECT
    e.user_id
FROM
    emails e
INNER JOIN texts t ON t.email_id = e.email_id AND t.signup_action = N'Confirmed'
WHERE
    EXTRACT(EPOCH FROM t.action_date - e.signup_date) = 86400;