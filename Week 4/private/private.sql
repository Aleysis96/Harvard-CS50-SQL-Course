/* Table created */
CREATE TABLE "cipher_decoded" (
    "sentence_id" INTEGER,
    "Character" INTEGER,
    "Length" INTEGER
);

/*Values inserted in table*/
INSERT INTO "cipher_decoded" ("sentence_id", "Character", "Length")
VALUES
(14,98,4),
(114,3,5),
(618,72,9),
(630,7,3),
(932,12,5),
(2230,50,7),
(2346,44,10),
(3041,14,5)
;

/* Table created to view the message */
CREATE VIEW "message" AS
SELECT substr("sentence", "Character", "Length") AS "phrase"
FROM "cipher_decoded"
JOIN "sentences" ON "sentences"."id" = "cipher_decoded"."sentence_id";
