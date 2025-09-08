/*write a SQL statement to create a view named most_populated.
This view should contain, in order from greatest to least, the most populated districts in Nepal */

CREATE VIEW "most_populated" AS
SELECT "district", "families", "households", "population", "male", "female"
FROM "census"
ORDER BY "population" DESC;
