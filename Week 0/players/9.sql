/*write a SQL query to find the players who played their final game in the MLB in 2022. */

SELECT "first_name", "last_name"
FROM "players"
WHERE "final_game" BETWEEN '2022-01-01' AND '2022-12-31'
ORDER BY "first_name", "last_name" ASC;
