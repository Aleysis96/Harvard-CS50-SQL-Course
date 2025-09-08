/*write a set of SQL statements that create indexes which will speed up typical queries on the harvard.db database. */


/*Find a student’s historical course enrollments, based on their ID: */
CREATE INDEX "all_courses" ON "enrollments" ("course_id");


/*Search for a course by title and semester: */
CREATE INDEX "courses_title_semester" ON "courses" ("title", "semester");


