SELECT 
    my_users.name AS usuario,
    COUNT(my_reps.user_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(my_songs.duration/60), 2) AS total_minutos
FROM
    SpotifyClone.user AS my_users
        JOIN
    SpotifyClone.rep_history AS my_reps ON my_users.id = my_reps.user_id
        JOIN
    SpotifyClone.song AS my_songs ON my_reps.song_id = my_songs.id
GROUP BY usuario
ORDER BY usuario ASC;