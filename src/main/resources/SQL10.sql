DROP TABLE book;

CREATE TABLE book
(
    book_id INT PRIMARY KEY,
    title   TEXT NOT NULL,
    isbn    TEXT NOT NULL
);

CREATE TABLE author
(   author_id INT PRIMARY KEY,
    full_name TEXT NOT NULL,
    rating REAL

);

CREATE TABLE book_author(
    book_id INT REFERENCES book(book_id),
    author_id INT REFERENCES author(author_id),

    CONSTRAINT book_author_pkey PRIMARY KEY (book_id,author_id)--COMPOSITE KEY
);

INSERT INTO book
VALUES

     (1,'Book for Dummies','123456'),
     (2,'Book for Smart Guys','7890123'),
     (3,'Book for Happy People','4567890'),
     (4,'Book for Unhappy People','1234567');

INSERT INTO author
VALUES (1,'Bob',4.5),
       (2,'Alice',4.0),
       (3,'John',4.7);

INSERT INTO book_author
VALUES (1,1),
       (2,1),
       (3,1),
       (3,2),
       (4,1),
       (4,2),
       (4,3);



