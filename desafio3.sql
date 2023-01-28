SELECT 
    users.user_name AS usuario,
    COUNT(history.song_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND(songs.duration / 60, 2)) AS total_minutos
FROM
    SpotifyClone.users
        INNER JOIN
    SpotifyClone.history ON users.user_id = history.user_id
        INNER JOIN
    SpotifyClone.songs ON songs.song_id = history.song_id
GROUP BY users.user_name
ORDER BY users.user_name ASC;