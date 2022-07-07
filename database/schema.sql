CREATE DATABASE My-Things;

DROP TABLE IF EXISTS source;

DROP TABLE IF EXISTS music_album;

DROP TABLE IF EXISTS movie;

DROP TABLE IF EXISTS label;

DROP TABLE IF EXISTS item;

DROP TABLE IF EXISTS genre;

DROP TABLE IF EXISTS game;

DROP TABLE IF EXISTS book;

DROP TABLE IF EXISTS author;

CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	first_name varchar(50) NULL,
	last_name varchar(50) NULL
);

CREATE TABLE book(
	id SERIAL PRIMARY KEY,
	cover_state varchar(100) NULL,
	publisher varchar(50) NULL
    ); 
    
CREATE TABLE game(
	id SERIAL PRIMARY KEY,
	multiplayer varchar(50) NULL,
	last_played_at date NULL
    );

CREATE TABLE genre(
	id SERIAL PRIMARY KEY,
	name varchar(100) NULL
    );

CREATE TABLE item(
	id int NULL,
	genre_id int NULL,
	author_id int NULL,
	source_id int NULL,
	label_id int NULL,
	publish_date date NULL,
	archived bit NOT NULL
);

CREATE TABLE label(
	id SERIAL PRIMARY KEY,
	title varchar(200) NULL,
	color varchar(50) NULL
    );

CREATE TABLE movie(
	id SERIAL PRIMARY KEY,
	silet bit NULL
    );

CREATE TABLE music_album(
	id SERIAL PRIMARY KEY,
	on_spotify bit NULL
    );

CREATE TABLE source(
	id SERIAL PRIMARY KEY,
	name varchar(100) NULL
    );

ALTER TABLE item ADD CONSTRAINT add_author FOREIGN KEY(author_id) REFERENCES author (id);

ALTER TABLE item ADD  CONSTRAINT add_label FOREIGN KEY(source_id) REFERENCES source (id);

ALTER TABLE item ADD  CONSTRAINT add_genre FOREIGN KEY(genre_id) REFERENCES genre (id);

ALTER TABLE item ADD  CONSTRAINT add_label FOREIGN KEY(label_id) REFERENCES label (id);

ALTER TABLE item ADD  CONSTRAINT FK_Item_Book FOREIGN KEY(id) REFERENCES book (id);

ALTER TABLE item ADD  CONSTRAINT FK_Item_Game FOREIGN KEY(id) REFERENCES game (id);

ALTER TABLE item ADD  CONSTRAINT FK_Item_Movie FOREIGN KEY(id) REFERENCES movie (id);

ALTER TABLE item ADD  CONSTRAINT FK_Item_MusicAlbum FOREIGN KEY(id) REFERENCES music_album (id);
