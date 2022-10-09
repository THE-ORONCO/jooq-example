CREATE TABLE IF NOT EXISTS Author (
  idAuthor int NOT NULL AUTO_INCREMENT,
  firstName varchar(20) NOT NULL,
  lastName varchar(20) NOT NULL,
  PRIMARY KEY (idAuthor)
);

INSERT INTO Author (firstName, lastName) VALUES
("Just Kidding", "Sliding"),
("Zasunne", "Collouts"),
("George", "Andbad");

CREATE TABLE IF NOT EXISTS Book (
  idBook int NOT NULL AUTO_INCREMENT,
  name varchar(32) NOT NULL,
  description varchar(128) NOT NULL,
  author int REFERENCES Author(idAuthor),
  PRIMARY KEY (idBook)
);

INSERT INTO Book (name, description, author) VALUES
('Hanry Plotter', 'Your a Printer Hanry!', 1),
('Thirst Games', 'Dogness Neverdeen drops from the Battle Bus for an epic battle royal.', 2),
('1969', 'Nobodies brother is watching. Everything is fine.', 3);
