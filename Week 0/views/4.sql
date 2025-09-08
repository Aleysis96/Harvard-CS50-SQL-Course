/*  write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”.  */

SELECT COUNT ("print_number")
FROM "views"
WHERE "english_title" LIKE '%Eastern%' AND "artist" = "Hiroshige";
