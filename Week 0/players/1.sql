/* write a SQL query to find the hometown (including city, state, and country) of Jackie Robinson. */

SELECT "birth_city", "birth_state", "birth_country"
FROM "players"
WHERE "last_name" = "Robinson" AND "first_name" = "Jackie";
