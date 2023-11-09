CREATE TABLE "menu" (
        "id" SERIAL PRIMARY KEY,
        "title" varchar,
        "description" varchar,
        "price" integer,
        "spicy_level" varchar,
        "category_id"  integer,
        "cuisine_id" integer,
        FOREIGN KEY ("category_id") REFERENCES "category" ("id"),
        FOREIGN KEY ("cuisine_id") REFERENCES "cuisine" ("id")
    );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Spaghetti Carbonara",
            "A classic Roman pasta dish made with eggs, cheese, pancetta, and black pepper.",
            13.99,
            "Mild",
            3, 
            1
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Pad Thai",
            "A popular Thai stir-fried noodle dish with shrimp, tofu, peanuts, and tamarind sauce.",
            11.99,
            "Medium",
            1,
            2
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Chicken Alfredo",
            "Creamy Alfredo sauce with grilled chicken and fettuccine pasta.",
            14.99,
            "Mild",
            2,
            3
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Hamburger",
            "A classic American burger with a juicy patty, lettuce, tomato, and cheese.",
            9.99,
            "Not Spicy",
            3,
            2
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Sushi Sashimi Combo",
            "A Japanese platter with assorted sushi and sashimi slices served with pickled ginger and soy sauce.",
            22.99,
            "Not Spicy",
            4,
            2
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Chicken Tikka Masala",
            "Tender chicken pieces in a creamy tomato-based sauce with Indian spices.",
            14.99,
            "Medium",
            5,
            3
        );
    
    INSERT INTO 
        "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
    VALUES 
        (
            "Caesar Salad",
            "Fresh romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.",
            8.99,
            "Mild",
            1,
            4
        );
    
    CREATE TABLE 
        "category" (
            "id" SERIAL PRIMARY KEY,
            "name" varchar
        );
    
    INSERT INTO 
        "category" ("name") 
    VALUES 
        (
            "Breakfast",
            "Lunch",
            "Dinner",
            "Appetizer",
        );
    
    CREATE TABLE "cuisine" (
        "id" integer PRIMARY KEY,
        "name" varchar
    );
    
    INSERT INTO 
        "cuisine" ("name") 
    VALUES 
        (
            "Italian",
            "Thai",
            "American",
            "Japanese",
            "Indian"
        );
    
    
    ALTER TABLE "category" ADD FOREIGN KEY ("id") REFERENCES "menu" ("category");
    
    ALTER TABLE "cuisine" ADD FOREIGN KEY ("id") REFERENCES "menu" ("cuisine");
    FOREIGN KEY ("cuisine_id") REFERENCES "cuisine" ("id")
);

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Spaghetti Carbonara",
        "A classic Roman pasta dish made with eggs, cheese, pancetta, and black pepper.",
        13.99,
        "Mild",
        3, 
        1
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Pad Thai",
        "A popular Thai stir-fried noodle dish with shrimp, tofu, peanuts, and tamarind sauce.",
        11.99,
        "Medium",
        1,
        2
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Chicken Alfredo",
        "Creamy Alfredo sauce with grilled chicken and fettuccine pasta.",
        14.99,
        "Mild",
        2,
        3
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Hamburger",
        "A classic American burger with a juicy patty, lettuce, tomato, and cheese.",
        9.99,
        "Not Spicy",
        3,
        2
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Sushi Sashimi Combo",
        "A Japanese platter with assorted sushi and sashimi slices served with pickled ginger and soy sauce.",
        22.99,
        "Not Spicy",
        4,
        2
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Chicken Tikka Masala",
        "Tender chicken pieces in a creamy tomato-based sauce with Indian spices.",
        14.99,
        "Medium",
        5,
        3
    );

INSERT INTO 
    "menu"("title", "description", "price", "spicy_level", "category_id", "cuisine_id")
VALUES 
    (
        "Caesar Salad",
        "Fresh romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.",
        8.99,
        "Mild",
        1,
        4
    );

CREATE TABLE 
    "category" (
        "id" SERIAL PRIMARY KEY,
        "name" varchar
    );

INSERT INTO 
    "category" ("name") 
VALUES 
    (
        "Breakfast",
        "Lunch",
        "Dinner",
        "Appetizer",
    );

CREATE TABLE "cuisine" (
    "id" integer PRIMARY KEY,
    "name" varchar
);

INSERT INTO 
    "cuisine" ("name") 
VALUES 
    (
        "Italian",
        "Thai",
        "American",
        "Japanese",
        "Indian"
    );


ALTER TABLE "category" ADD FOREIGN KEY ("id") REFERENCES "menu" ("category");

ALTER TABLE "cuisine" ADD FOREIGN KEY ("id") REFERENCES "menu" ("cuisine");