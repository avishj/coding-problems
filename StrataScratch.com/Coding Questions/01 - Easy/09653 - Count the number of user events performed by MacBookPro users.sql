-- Source: https://web.archive.org/web/20240121175950/https://platform.stratascratch.com/coding/9653-count-the-number-of-user-events-performed-by-macbookpro-users?code_type=5

SELECT
    pe.[event_name],
    COUNT(pe.[event_name]) AS [event_count]
FROM
    playbook_events pe
WHERE
    pe.[device] = N'macbook pro'
GROUP BY
    pe.[event_name]
ORDER BY
    COUNT(pe.[event_name]) DESC;