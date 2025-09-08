/*write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001*/

SELECT "salary"
FROM "salaries"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id" AND "salaries"."year" = "performances"."year"
JOIN "players" ON "players"."id" = "salaries"."player_id"
WHERE "performances"."year" = 2001
ORDER BY "performances"."HR" DESC
LIMIT 1;
