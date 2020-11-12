CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE store_goods_types(
    id serial PRIMARY KEY,
    created timestamptz DEFAULT (current_timestamp AT time ZONE 'UTC') NOT NULL,
    name varchar NOT NULL,
    description text NULL
);

CREATE TABLE store_categories(
    id serial PRIMARY KEY,
    created timestamptz DEFAULT (current_timestamp AT time ZONE 'UTC') NOT NULL,
    name varchar NOT NULL,
    description text NULL
);

CREATE TABLE store_goods_categories(
    id serial PRIMARY KEY,
    created timestamptz DEFAULT (current_timestamp AT time ZONE 'UTC') NOT NULL,
    store_good_type_id INTEGER NOT NULL,
    store_categories_id INTEGER NOT NULL,
    constraint fk_good_type_id foreign KEY (store_good_type_id) references store_goods_types(id),
    constraint fk_categories_id foreign KEY (store_categories_id) references store_categories(id)
);

CREATE TABLE store_goods_stock(
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    created timestamptz DEFAULT (current_timestamp AT time ZONE 'UTC') NOT NULL,
    modified timestamptz NULL,
    name varchar NOT NULL,
    store_good_category_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price float NOT NULL,
    is_active bool NOT NULL,
    constraint fk_good_category_id foreign KEY (store_good_category_id) references store_goods_categories(id)
);