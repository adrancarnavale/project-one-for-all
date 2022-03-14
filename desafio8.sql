SELECT 
    my_artists.name AS artista, my_albums.name AS album
FROM
    SpotifyClone.album AS my_albums
        JOIN
    SpotifyClone.artist AS my_artists ON my_albums.artist_id = my_artists.id
GROUP BY artista , album
HAVING artista = 'Walter Phoenix';