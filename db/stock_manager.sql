DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS labels;

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE labels (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    artist_id SERIAL REFERENCES artists(id) ON DELETE CASCADE,
    genre VARCHAR(255),
    price FLOAT,
    cost_price FLOAT,
    release_year INT,
    cover_art TEXT,
    stock INT,
    label_id SERIAL REFERENCES labels(id) ON DELETE CASCADE
);