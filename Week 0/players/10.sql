/* write SQL query to answer a question of your choice. */

SELECT "last_name" AS "Mexican_players"
FROM "players"
WHERE "birth_country" = "Mexico"
ORDER BY "last_name" ASC;
