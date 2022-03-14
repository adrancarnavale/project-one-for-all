SELECT 
    COUNT(DISTINCT (my_songs.id)) AS cancoes,
    COUNT(DISTINCT (my_artists.id)) AS artistas,
    COUNT(DISTINCT (my_albuns.id)) AS albuns
FROM
    SpotifyClone.song AS my_songs
        JOIN
    SpotifyClone.album AS my_albuns ON my_songs.album_id = my_albuns.id
        JOIN
    SpotifyClone.artist AS my_artists ON my_albuns.artist_id = my_artists.id;