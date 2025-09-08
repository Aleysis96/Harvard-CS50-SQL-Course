/*write a SQL statement to create a view named by_district.
This view should contain the sums for each numeric column in census, grouped by district. */

CREATE VIEW "by_district" AS
SELECT "district", SUM ("families") AS "families", SUM ("households"), SUM ("population"), SUM ("male"), SUM ("female")
FROM "census"
GROUP BY "district";
