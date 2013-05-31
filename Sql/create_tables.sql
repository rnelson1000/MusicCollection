/*

Song data must be stored in tables containing at least the following data:

		Artist name
		Album name
		Song title, track number, genre
		Genre name

 */
DROP TABLE song;
DROP TABLE album;
DROP TABLE genre;
DROP TABLE artist;

CREATE TABLE artist
(
	id int primary key not null auto_increment,
    name varchar(50) not null
)ENGINE=INNODB;

CREATE TABLE genre
(
  id int primary key not null auto_increment,
  name varchar(50) not null
)ENGINE=INNODB;

CREATE TABLE album
(
  id int primary key not null auto_increment,
  name varchar(50) not null,
  artist_id int not null
) ENGINE=INNODB;

CREATE TABLE song
(
  id int primary key not null auto_increment,
  title varchar(50) not null,
  tracknumber tinyint not null,
  album_id int not null,
  genre_id int not null
)ENGINE=INNODB;

ALTER TABLE album
ADD CONSTRAINT artist_album FOREIGN KEY(artist_id) references artist(id);

ALTER TABLE song
ADD CONSTRAINT album_song FOREIGN KEY (album_id) references album(id),
ADD CONSTRAINT genre_song FOREIGN KEY (genre_id) references genre(id);

/* Since we're not searching by anything other than ids, no need to index anything other than FKs at this time */
CREATE INDEX ix_album_artist_id ON album(artist_id);
CREATE INDEX ix_song_album_id ON song(album_id);
CREATE INDEX ix_song_genre_id ON song(genre_id);