insert into store_goods_types(name)
values
    ('books'),
    ('videogames'),
    ('movies'),
    ('records');

insert into store_categories(name)
values 
    ('suspense'),
    ('action'),
    ('drama'),
    ('pop'),
    ('rock'),
    ('punk'),
    ('comedy'),
    ('fantasy'),
    ('classic');

insert into store_goods_categories(store_good_type_id, store_categories_id)
values 
    (1,1),
    (1,2),
    (1,3),
    (1,8),
    (2,2),
    (3,1),
    (4,4);

insert into store_goods_stock(name,store_good_category_id, quantity, unit_price, is_active)
values
    ('The lord of the rings',4, 100, 150, TRUE),
    ('Alice’s Adventures in Wonderland', 4, 100, 230, TRUE),
    ('The Lion, the Witch and the Wardrobe', 4, 50, 200, TRUE),
    ('The Golden Compass', 4, 20, 200, TRUE),
    ('Harry Potter and the Prisoner of Azkaban', 4, 25, 300, TRUE),
    ('A Storm of Swords', 4, 50, 500, TRUE),
    ('The Hobbit', 4, 200, 125, TRUE),
    ('The Gunslinger', 4, 10, 225, TRUE),
    ('Howl’s Moving Castle', 4, 111, 228, TRUE),
    ('Interview with the Vampire', 4, 75, 333, TRUE),
    ('A Game of Thrones', 4, 50, 799, TRUE),
    ('American Gods', 4, 70, 85, TRUE),
    ('Call of Duty', 5, 30, 899, TRUE),
    ('Bayonetta 2', 5, 75, 599, TRUE),
    ('Rise of the Tomb Raider', 5, 65, 550, TRUE),
    ('NieR: Automata', 5, 45, 1299, TRUE),
    ('Monster Hunter World', 5, 31, 1099, TRUE),
    ('Devil May Cry 5', 5, 22, 880, TRUE),
    ('The Last of Us: Part II', 5, 2, 1499, TRUE),
    ('Grand Theft Auto IV', 5, 8, 199, TRUE);