-- *** The Lost Letter ***
/* get id where equals the address the customer gave */
SELECT "id" FROM "addresses"
WHERE "address" = "900 Somerville Avenue";

/* get id that match the id from address and contains the type of letter the customer mentioned */
SELECT "id" FROM "packages"
WHERE "from_address_id" = 432
AND "contents" = "Congratulatory letter";

/* code to obtain the id address where the package was dropped */
SELECT "address_id"
FROM "scans"
JOIN "packages" ON "scans"."package_id" = "packages"."id"
JOIN "addresses" ON "packages"."from_address_id" = "addresses"."id"
WHERE "scans"."package_id" = 384
  AND "addresses"."address" = "900 Somerville Avenue"
  AND "scans"."action" = "Drop";

/* get the name of the address where the package was dropped */
SELECT "address" FROM "addresses"
WHERE "id" = 854;

-- *** The Devious Delivery ***
/*Get the content where address id is null*/
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;

/* code to get the address and type where the id is equal to null in packages */
SELECT "address", "type" FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "action" = 'Drop'
    AND "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL)
);


-- *** The Forgotten Gift ***
/* Get the id of the address the customer shared */
SELECT * FROM "addresses"
WHERE "address" = "109 Tileston Street";
-- Result = 9873 --

/*Get the id of the package that match the id we got before */
SELECT * FROM "packages"
WHERE "from_address_id" = 9873;
-- Result = 9523 and contains flowers --

/* Code to obtain the id and name of the driver who has the package, based on the the drivers id on scans table and action */
SELECT "drivers"."id", "drivers"."name" FROM "drivers"
JOIN "scans" ON "scans"."driver_id" = "drivers"."id"
WHERE "scans"."package_id" = 9523
AND "scans"."address_id" = 7432
AND "scans"."action" = "Pick";

