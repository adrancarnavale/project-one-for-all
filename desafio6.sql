SELECT 
    ROUND(MIN(my_plans.value), 2) AS faturamento_minimo,
    ROUND(MAX(my_plans.value), 2) AS faturamento_maximo,
    ROUND(AVG(my_plans.value), 2) AS faturamento_medio,
    ROUND(SUM(my_plans.value), 2) AS faturamento_total
FROM
    SpotifyClone.plan AS my_plans
        JOIN
    SpotifyClone.user AS my_users ON my_plans.id = my_users.plan_id;