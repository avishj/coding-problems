-- Source: https://web.archive.org/web/20240126082539/https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=5

SELECT DISTINCT
    lu.[home_library_code]
FROM
    library_usage lu
WHERE
    lu.[notice_preference_definition] = N'email'
    AND lu.[provided_email_address] = 'FALSE';