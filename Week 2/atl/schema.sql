CREATE TABLE "Passenger" (
     "Id" INTEGER,
     "First_name" TEXT,
     "Last_name" TEXT,
     "Age" INTEGER,
     PRIMARY KEY ("Id")
);

CREATE TABLE "Checkings" (
    "Id" INTEGER,
    "Checking_Date_Time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "Checking_Flight" INTEGER NOT NULL CHECK ("Checking_Flight" != 0),
    PRIMARY KEY ("Id")
);

CREATE TABLE "Airlines" (
    "Id" INTEGER,
    "Airline_Name" TEXT NOT NULL UNIQUE,
    "Airport_Section" TEXT NOT NULL,
    PRIMARY KEY ("Id")
);

CREATE TABLE "Flight" (
    "Id" INTEGER,
    "Passenger_id" INTEGER,
    "Checking_id" INTEGER,
    "Airline_id" INTEGER,
    "Flight_Number" INTEGER,
    "Airline" TEXT NOT NULL,
    "Departing_Airport" TEXT NOT NULL,
    "Arriving_Airport" TEXT NOT NULL,
    "Departure_Date_Time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "Arrival_Date_Time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("Id"),
    FOREIGN KEY ("Passenger_id") REFERENCES "Passenger" ("Id"),
    FOREIGN KEY ("Checking_id") REFERENCES "Checkings" ("Id"),
    FOREIGN KEY ("Airline_id") REFERENCES "Airlines" ("Id")

);
