/*write a SQL query to find the 50 players paid the least in 2001*/

SELECT "first_name", "last_name", "salary"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001
ORDER BY "salary" ASC, "players"."first_name" ASC, "players"."last_name" ASC, "players"."id" DESC
LIMIT 50;
