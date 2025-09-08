/*write a SQL query to find the 10 least expensive players per hit in 2001*/

SELECT "first_name", "last_name", "salary" / "H" AS "dollars per hit"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001
AND "performances"."year" = 2001
AND "dollars per hit" NOT NULL
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;

