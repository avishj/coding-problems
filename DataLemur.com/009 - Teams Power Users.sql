-- Source: https://archive.is/cN0eK

SELECT
    m.sender_id,
    COUNT(m.message_id) AS count_messages
FROM
    messages m
WHERE
    EXTRACT(MONTH FROM m.sent_date) = '8'
    AND EXTRACT(YEAR FROM m.sent_date) = '2022'
GROUP BY 
    m.sender_id
ORDER BY
    COUNT(m.message_id) DESC
LIMIT 
    2;