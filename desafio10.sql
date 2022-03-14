SELECT 
    my_songs.name AS nome, COUNT(my_reps.song_id) AS reproducoes
FROM
    SpotifyClone.plan AS my_plans
        JOIN
    SpotifyClone.user AS my_users ON my_plans.id = my_users.plan_id
        JOIN
    SpotifyClone.rep_history AS my_reps ON my_users.id = my_reps.user_id
        JOIN
    SpotifyClone.song AS my_songs ON my_reps.song_id = my_songs.id
WHERE
    my_plans.name = 'gratuito'
        OR my_plans.name = 'pessoal'
GROUP BY nome;