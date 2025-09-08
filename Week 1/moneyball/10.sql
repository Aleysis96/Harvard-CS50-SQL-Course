/*The general manager has asked you for a report which details each player’s name, their salary for each year they’ve been playing,
and their number of home runs for each year they’ve been playing. */

SELECT "first_name", "last_name", "salary", "HR", "salaries"."year"
FROM "players"
JOIN "performances"
ON "performances"."player_id" = "players"."id"
JOIN "salaries"
ON "salaries"."player_id" = "players"."id"
WHERE "performances"."year" = "salaries"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "HR" DESC, "salary" DESC;
