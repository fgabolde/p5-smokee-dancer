USE smokee;
CREATE TABLE book (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (255) NOT NULL,
    author VARCHAR (255) NOT NULL
);
INSERT INTO book (title, author) VALUES ("Dune", "Frank Herbert");
INSERT INTO book (title, author) VALUES ("The Martian Chronicles", "Ray Bradbury");
