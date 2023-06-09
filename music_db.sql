CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor (
	id SERIAL PRIMARY KEY,
	nick_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_executor (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER REFERENCES Genre(id),
	executor_id INTEGER REFERENCES Executor(id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title_album VARCHAR(60) NOT NULL,
	year_album DATE
);

CREATE TABLE IF NOT EXISTS Executor_album (
 	id SERIAL PRIMARY KEY,
 	executor_id INTEGER REFERENCES Executor(id),
 	alum_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(id) 
	title_track VARCHAR(60) NOT NULL,
	duration INTERVAL
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title_collection VARCHAR(60) NOT NULL,
	year_collection DATE
);

CREATE TABLE IF NOT EXISTS Track_collection (
	id SERIAL PRIMARY KEY,
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id)
);