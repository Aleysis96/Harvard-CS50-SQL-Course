
CREATE TABLE "Ingredients" (
    "id" INTEGER,
    "ingredient" TEXT NOT NULL,
    "per_ingredient_price" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "Donuts" (
    "id" INTEGER,
    "donut_name" TEXT NOT NULL UNIQUE,
    "gluten_free" TEXT NOT NULL CHECK ("gluten_free" IN ('No', 'Yes')),
    "price_per_donut" INTEGER NOT NULL,
    "ingredient_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients" ("id")
);

CREATE TABLE "Orders" (
    "id" INTEGER,
    "donuts_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donuts_id") REFERENCES "Donuts" ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "Customers" ("id")
);

CREATE TABLE "Customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "orders_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("orders_id") REFERENCES "Orders" ("id")
);
