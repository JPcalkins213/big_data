-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Games" (
    "game_id" int   NOT NULL,
    "name" varchar   NOT NULL,
    "price" money   NOT NULL,
    "description" varchar   NOT NULL,
    "rating" int   NOT NULL,
    "category" int   NOT NULL,
    CONSTRAINT "pk_Games" PRIMARY KEY (
        "game_id"
     )
);

CREATE TABLE "Categories" (
    "category_id" int   NOT NULL,
    "category_name" varchar   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Sales" (
    "sale_id" int   NOT NULL,
    "dop" date   NOT NULL,
    "game_name" varchar   NOT NULL,
    "buyer" varchar   NULL,
    CONSTRAINT "pk_Sales" PRIMARY KEY (
        "sale_id"
     )
);

CREATE TABLE "Users" (
    "user_id" int   NOT NULL,
    "gamertag" varchar   NOT NULL,
    "fname" varchar   NOT NULL,
    "lname" varchar   NOT NULL,
    "birthdate" date   NOT NULL,
    "phone_number" int   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Users" PRIMARY KEY (
        "user_id"
     )
);

ALTER TABLE "Games" ADD CONSTRAINT "fk_Games_name" FOREIGN KEY("name")
REFERENCES "Sales" ("game_name");

ALTER TABLE "Categories" ADD CONSTRAINT "fk_Categories_category_id" FOREIGN KEY("category_id")
REFERENCES "Games" ("category");

ALTER TABLE "Users" ADD CONSTRAINT "fk_Users_user_id" FOREIGN KEY("user_id")
REFERENCES "Sales" ("buyer");

