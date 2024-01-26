-- Source: https://web.archive.org/web/20240126083041/https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=5

SELECT DISTINCT
    fp.*
FROM
    facebook_reactions fr
    INNER JOIN facebook_posts fp ON fp.[post_id] = fr.[post_id]
WHERE
    fr.[reaction] = N'heart';