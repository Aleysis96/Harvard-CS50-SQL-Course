/*write a SQL query to return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA). */

SELECT "first_name", "last_name", "debut"
FROM "players"
WHERE "birth_state" = "PA"
AND "birth_city" = "Pittsburgh"
ORDER BY "debut" DESC, "first_name", "last_name" DESC;
