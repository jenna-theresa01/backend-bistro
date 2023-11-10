INSERT INTO category (name)
VALUES ('Appetizer');

INSERT INTO category (name)
VALUES ('Breakfast');

INSERT INTO category (name)
VALUES ('Lunch');

INSERT INTO category (name)
VALUES ('Dinner');

INSERT INTO cuisine (name)
VALUES ('Italian');

INSERT INTO cuisine (name)
VALUES ('American');

INSERT INTO cuisine (name)
VALUES ('Thai');

INSERT INTO cuisine (name)
VALUES ('Indian');

INSERT INTO cuisine (name)
VALUES ('Japanese');

INSERT INTO menu (
        title,
        description,
        price,
        spicy_level,
        category_id,
        cuisine_id
    )
VALUES (
        'Spaghetti Carbonara',
        'A classic Roman pasta dish made with eggs, cheese, pancetta, and black pepper.',
        13.99,
        1,
        4,
        1
    );

    INSERT INTO menu (
        title,
        description,
        price,
        spicy_level,
        category_id,
        cuisine_id
    )
VALUES (
        'Pad Thai',
        'A popular Thai stir-fried noodle dish with shrimp, tofu, peanuts, and tamarind sauce.',
        11.99,
        3,
        4,
        3
    );

    INSERT INTO menu (
        title,
        description,
        price,
        spicy_level,
        category_id,
        cuisine_id
    )
VALUES (
        'Hamburger',
        'A classic American burger with a juicy patty, lettuce, tomato, and cheese.',
        9.99,
        1,
        4,
        2
    );

    INSERT INTO menu (
        title,
        description,
        price,
        spicy_level,
        category_id,
        cuisine_id
    )
VALUES (
        'Sushi Sashimi Combo',
        'A Japanese platter with assorted sushi and sashimi slices served with pickled ginger and soy sauce.',
        22.99,
        1,
        3,
        5
    );
    
