/* write a SQL statement to create a view named rural. This view should contain all census records relating to a rural municipality  */
CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE "locality" LIKE '%Rural%';
