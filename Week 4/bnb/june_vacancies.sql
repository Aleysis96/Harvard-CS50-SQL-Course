/*write a SQL statement to create a view named june_vacancies.
This view should contain all listings and the number of days in June of 2023 that they remained vacant */

CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("availabilities"."date") AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE "availabilities"."date" BETWEEN '2023-06-01' AND '2023-06-30' AND "availabilities"."available" = 'TRUE'
GROUP BY "listings"."id";
