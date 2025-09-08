/* write a SQL query to answer a question of your choice about the prints. */

SELECT "english_title", "artist", "entropy" AS "highest_complexity"
FROM "views"
WHERE "artist" = "Hokusai"
ORDER BY "entropy" DESC
LIMIT 3;
