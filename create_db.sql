CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Bands (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreBand (
	Genre_id INTEGER REFERENCES Genre(id),
	Band_id INTEGER REFERENCES Bands(id),
	CONSTRAINT pk_GenreBand PRIMARY KEY (Genre_id, Band_id)
);


CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of INTEGER check(year_of>1900)
);


CREATE TABLE IF NOT EXISTS BandAlbum (
	Album_id INTEGER REFERENCES Album(id),
	Band_id INTEGER REFERENCES Bands(id),
	CONSTRAINT pk_BandAlbum PRIMARY KEY (Album_id, Band_id)
);


CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of INTEGER check(year_of>1900)
);

CREATE TABLE IF NOT EXISTS SongCollection (
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_SongCollection PRIMARY KEY (Song_id, Collection_id)
);
