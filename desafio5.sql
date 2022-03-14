SELECT 
    my_songs.name AS cancao,
    COUNT(my_reps.user_id) AS reproducoes
FROM
    SpotifyClone.song AS my_songs
        JOIN
    SpotifyClone.rep_history AS my_reps ON my_songs.id = my_reps.song_id
        JOIN
    SpotifyClone.user AS my_users ON my_reps.user_id = my_users.id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;