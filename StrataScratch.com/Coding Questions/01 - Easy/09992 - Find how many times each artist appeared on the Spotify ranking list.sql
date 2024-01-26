-- Source: https://web.archive.org/web/20240126082612/https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=5

SELECT
    swdsr.[artist],
    COUNT(swdsr.[artist])
FROM
    spotify_worldwide_daily_song_ranking swdsr
GROUP BY
    swdsr.[artist]
ORDER BY
    COUNT(swdsr.[artist]) DESC;