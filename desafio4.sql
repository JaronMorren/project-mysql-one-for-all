SELECT
    users.user_name AS `usuario`,
    IF(YEAR(MAX(history.play_time)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users
        INNER JOIN
    SpotifyClone.history ON users.user_id = history.user_id
GROUP BY users.user_name
ORDER BY users.user_name;