SELECT 
    my_artists.name AS artista,
    my_albums.name AS album,
    COUNT(my_users.id) AS seguidores
FROM
    SpotifyClone.album AS my_albums
        JOIN
    SpotifyClone.artist AS my_artists ON my_albums.artist_id = my_artists.id
        JOIN
    SpotifyClone.artist_has_user AS artist_user ON my_artists.id = artist_user.artist_id
        JOIN
    SpotifyClone.user AS my_users ON artist_user.user_id = my_users.id
GROUP BY artista , album
ORDER BY seguidores DESC , artista ASC , album ASC;