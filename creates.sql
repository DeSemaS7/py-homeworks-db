--Создание таблицы жанров.
CREATE TABLE genre (
	id serial4 NOT NULL,
	"name" varchar(60) NOT NULL,
	CONSTRAINT genre_pkey PRIMARY KEY (id),
	CONSTRAINT genre_unique UNIQUE (name)
);

--Создание таблицы исполнителей.
CREATE TABLE artist (
	id serial4 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT artist_pkey PRIMARY KEY (id),
	CONSTRAINT artist_unique UNIQUE (name)
);

--Создание таблицы связей исполнителей и жанров.
CREATE TABLE artgenid (
	artistid int4 NOT NULL,
	genreid int4 NOT NULL,
	CONSTRAINT artgenid_pk PRIMARY KEY (artistid, genreid),
	CONSTRAINT artgenid_artist_fk FOREIGN KEY (artistid) REFERENCES artist(id),
	CONSTRAINT artgenid_genre_fk FOREIGN KEY (genreid) REFERENCES genre(id)
);

--Создание таблицы альбомов.
CREATE TABLE album (
	id serial4 NOT NULL,
	title varchar NOT NULL,
	"year" int4 NOT NULL,
	CONSTRAINT album_check CHECK (((year >= 1900) AND (year <= 3000))),
	CONSTRAINT album_pk PRIMARY KEY (id)
);

--Создание таблицы связей исполнителей и альбомов.
CREATE TABLE artalbid (
	artistid int4 NOT NULL,
	albumid int4 NOT NULL,
	CONSTRAINT artalbid_pk PRIMARY KEY (artistid, albumid),
	CONSTRAINT artalbid_album_fk FOREIGN KEY (albumid) REFERENCES album(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT artalbid_artist_fk FOREIGN KEY (artistid) REFERENCES artist(id) ON DELETE CASCADE ON UPDATE CASCADE
);

--Создание таблицы треков.
CREATE TABLE tracks (
	id serial4 NOT NULL,
	title varchar NOT NULL,
	album int4 NOT NULL,
	duration int4 NOT NULL,
	CONSTRAINT tracks_pk PRIMARY KEY (id),
	CONSTRAINT tracks_album_fk FOREIGN KEY (album) REFERENCES album(id) ON DELETE CASCADE ON UPDATE CASCADE
);

--Создание таблицы сборников.
CREATE TABLE collection (
	id serial4 NOT NULL,
	title varchar NOT NULL,
	"year" int4 NOT NULL,
	CONSTRAINT collection_check CHECK (((year >= 1900) AND (year <= 3000))),
	CONSTRAINT collection_pk PRIMARY KEY (id)
);

--Создание таблицы связей сборников и треков.
CREATE TABLE colltracksid (
	collid int4 NOT NULL,
	trackid int4 NOT NULL,
	CONSTRAINT colltracksid_pk PRIMARY KEY (collid, trackid),
	CONSTRAINT colltracksid_collection_fk FOREIGN KEY (collid) REFERENCES collection(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT colltracksid_tracks_fk FOREIGN KEY (trackid) REFERENCES tracks(id) ON DELETE CASCADE ON UPDATE CASCADE
);