SELECT 
    COUNT(my_songs.id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.user AS my_users
        JOIN
    SpotifyClone.rep_history AS my_reps ON my_users.id = my_reps.user_id
        JOIN
    SpotifyClone.song AS my_songs ON my_reps.song_id = my_songs.id
WHERE
    my_users.name = 'Bill';