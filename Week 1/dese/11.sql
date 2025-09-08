/* Write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate--
Sort the schools from greatest per-pupil expenditure to least */

SELECT "name", "per_pupil_expenditure", "graduated" FROM "schools"
JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
ORDER BY "per_pupil_expenditure" DESC, "name" ASC;
