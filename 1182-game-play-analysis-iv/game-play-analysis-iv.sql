  
SELECT
  ROUND(
    (SELECT COUNT(DISTINCT a1.player_id) as num
     FROM activity a1
     JOIN activity a2 ON a1.player_id = a2.player_id
     WHERE a1.event_date + INTERVAL '1 day' = a2.event_date
       AND (a1.player_id, a1.event_date) IN (SELECT player_id, MIN(event_date) FROM activity GROUP BY player_id)
    ) / COUNT(DISTINCT player_id)::numeric, 2
  ) AS fraction
FROM activity;