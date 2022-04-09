CREATE TABLE authors( id VARCHAR(18) NOT NULL UNIQUE, fname TEXT NOT NULL, lname TEXT NOT NULL, photo_url TEXT, PRIMARY KEY (id) );
CREATE TABLE posts( id VARCHAR(18) NOT NULL UNIQUE, author VARCHAR(18) NOT NULL, title TEXT NOT NULL, body TEXT NOT NULL, photos TEXT, date DATETIME, PRIMARY KEY (id), FOREIGN KEY (author) REFERENCES authors(id) );
CREATE TABLE auth( author VARCHAR(18) NOT NULL, hashed_token TEXT NOT NULL, salt TEXT NOT NULL, FOREIGN KEY (author) REFERENCES authors(id) );