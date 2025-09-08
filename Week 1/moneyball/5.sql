/*write a SQL query to find all teams that Satchel Paige played for*/

SELECT "name"
FROM "teams"
JOIN "performances" ON "performances"."team_id" = "teams"."id"
JOIN "players" ON "players"."id" = "performances"."player_id"
WHERE "players"."first_name" = "Satchel"
AND "players"."last_name" = "Paige"
GROUP BY "name";
