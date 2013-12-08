CREATE TABLE films (
  id SERIAL4 PRIMARY KEY,
  title TEXT,
  director TEXT,
  actor TEXT,
  url TEXT,
  year INTEGER,
  genre TEXT,
  plot TEXT
);

INSERT INTO films (title, url, year, director, genre, plot) VALUES ('Juno','http://www.imdb.com/title/tt0467406/?ref_=fn_al_tt_1','2007','Comedy','Faced with an unplanned pregnancy, an offbeat young woman makes an unusual decision regarding her unborn child.');
INSERT INTO films (title, url, year, director, genre, plot) VALUES ('Despicable Me','http://www.imdb.com/title/tt1323594/?ref_=nv_sr_2','2010','Animation','When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.');

CREATE TABLE actors(
  id SERIAL4 PRIMARY KEY,
  film TEXT,
  name TEXT
);

INSERT INTO actors('Juno','Ellen Page');
INSERT INTO actors('Juno','Michael Cera');
INSERT INTO actors('Juno','Jennifer Garner');
INSERT INTO actors('Juno','Jason Batemen');
INSERT INTO actors('Despicable Me','Steve Carell');
INSERT INTO actors('Despicable Me','Jason Segel');
INSERT INTO actors('Despicable Me','Russell Brand');
INSERT INTO actors('Despicable Me','Julie Andrews');


CREATE TABLE directors(
  id SERIAL4 PRIMARY KEY,
  film TEXT,
  name TEXT
);

INSERT INTO directors('Despicable Me','');
INSERT INTO directors('Despicable Me','');
INSERT INTO directors('Juno','Jason Reitman');

CREATE TABLE genres(
  id SERIAL4 PRIMARY KEY,
  genre TEXT
);

INSERT INTO genres('Action');
INSERT INTO genres('Adventure');
INSERT INTO genres('Animation');
INSERT INTO genres('Comedy');
INSERT INTO genres('Horror');
INSERT INTO genres('Romance');
INSERT INTO genres('SciFi');
INSERT INTO genres('Thriller');