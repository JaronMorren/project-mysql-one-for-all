SELECT 
    artists.artist_name AS artista,
    albums.album_name AS album,
    COUNT(followed_artists.user_id) AS seguidores
FROM
    SpotifyClone.artists
        INNER JOIN
    SpotifyClone.albums ON artists.artist_id = albums.artist_id
        INNER JOIN
    SpotifyClone.followed_artists ON artists.artist_id = followed_artists.artist_id
GROUP BY artists.artist_name , albums.album_name
ORDER BY COUNT(followed_artists.artist_id) DESC , artists.artist_name , albums.album_name;