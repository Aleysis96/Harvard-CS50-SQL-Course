/*write a SQL query to find the average player salary by year*/

SELECT "year", ROUND(AVG("salary"),2) AS "Average Salary"
FROM "salaries"
JOIN "players" ON "players"."id" = "salaries"."player_id"
GROUP BY "year"
ORDER BY "year" DESC;
