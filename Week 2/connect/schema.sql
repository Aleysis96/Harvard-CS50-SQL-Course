
CREATE TABLE "Users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

CREATE TABLE "Schools" (
    "id" INTEGER,
    "school_name" TEXT NOT NULL UNIQUE,
    "school_type" TEXT NOT NULL,
    "school_location" TEXT,
    "school_year" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "Companies" (
    "id" INTEGER,
    "company_name" TEXT NOT NULL UNIQUE,
    "company_industry" TEXT NOT NULL,
    "company_location" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Connections" (
    "id" INTEGER,
    "users_id" INTEGER,
    "school_id" INTEGER,
    "companies_id" INTEGER,
    "school_start_date" INTEGER NOT NULL,
    "school_end_date" INTEGER NOT NULL,
    "degree" TEXT NOT NULL CHECK ("degree" IN ('BA', 'MA', 'PhD')),
    "company_start_date" INTEGER NOT NULL,
    "company_end_date" INTEGER NOT NULL,
    "company_title" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("users_id") REFERENCES "Users" ("id"),
    FOREIGN KEY ("school_id") REFERENCES "Schools" ("id"),
    FOREIGN KEY ("companies_id") REFERENCES "Companies" ("id")

);
