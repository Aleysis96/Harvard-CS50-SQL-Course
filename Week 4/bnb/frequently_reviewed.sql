/*write a SQL statement to create a view named frequently_reviewed.
This view should contain the 100 most frequently reviewed listings, sorted from most- to least-frequently reviewed */

CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("reviews"."id") AS "reviews"
FROM "listings"
JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "listings"."id"
ORDER BY "reviews" DESC
LIMIT 100;
