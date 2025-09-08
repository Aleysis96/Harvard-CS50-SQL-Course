/* write a SQL statement to create a view named total. This view should contain the sums for each numeric column in census */

CREATE VIEW "total" AS
SELECT SUM ("families"), SUM ("households") AS "households", SUM ("population"), SUM ("male"), SUM ("female")
FROM "census";
