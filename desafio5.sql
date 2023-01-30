SELECT 
    songs.song_name AS cancao,
    COUNT(songs.song_name) AS reproducoes
FROM
    SpotifyClone.users
        INNER JOIN
    SpotifyClone.history
        INNER JOIN
    SpotifyClone.songs ON users.user_id = history.user_id
        AND history.song_id = songs.song_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;