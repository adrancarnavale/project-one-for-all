SELECT 
    my_users.name AS usuario,
    IF(MAX(YEAR(my_reps.rep_date)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.user AS my_users
        JOIN
    SpotifyClone.rep_history AS my_reps ON my_users.id = my_reps.user_id
GROUP BY my_users.name
ORDER BY usuario ASC