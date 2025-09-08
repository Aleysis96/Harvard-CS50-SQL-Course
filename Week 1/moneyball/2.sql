/*write a SQL query to find Cal Ripken Jr.’s salary history*/

SELECT "year", "salary"
FROM "salaries"
JOIN "players" ON "players"."id" = "salaries"."player_id"
WHERE "players"."first_name" = "Cal"
AND "last_name" = "Ripken"
ORDER BY "year" DESC;
