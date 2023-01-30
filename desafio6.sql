SELECT 
    MIN(subscriptions.price) AS faturamento_minimo,
    MAX(subscriptions.price) AS faturamento_maximo,
    ROUND(AVG(subscriptions.price), 2) AS faturamento_medio,
    ROUND(SUM(subscriptions.price), 2) AS faturamento_total
FROM
    SpotifyClone.users
        INNER JOIN
    SpotifyClone.subscriptions ON users.plan_id = subscriptions.plan_id;