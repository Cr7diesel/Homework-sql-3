CREATE TABLE IF NOT EXISTS genres (
	id serial PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS authors (
	id serial PRIMARY KEY,
	author_name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_author (
	genre_id INTEGER REFERENCES genres(id),
	author_id INTEGER REFERENCES authors(id),
	CONSTRAINT genre_author_pk PRIMARY KEY (genre_id, author_id)
);

CREATE TABLE IF NOT EXISTS albums (
	id serial PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS authors_albums (
	author_id INTEGER REFERENCES authors(id),
	album_id INTEGER REFERENCES albums(id),
	CONSTRAINT authors_albums_pk PRIMARY KEY (author_id, album_id)
);

CREATE TABLE IF NOT EXISTS traks (
	id serial PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL UNIQUE,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
	id serial PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL UNIQUE,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS traks_collections (
	track_id INTEGER REFERENCES traks(id),
	collection_id INTEGER REFERENCES collections(id),
	CONSTRAINT traks_collections_pk PRIMARY KEY (track_id, collection_id)
);