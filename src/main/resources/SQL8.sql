INSERT INTO book
VALUES (1, 'The Diary of Young Girl', '0199535566',1),
       (2, 'Pride and Prejudice', '9780307594006',1),
       (3, 'To Kill a Mockingbird', '0446310786',2),
       (4, 'The Book of Gutsy Women: Favorite Stories of Courage and Resilience', '1501178415',2),
       (5, 'War and Peace', '1788886526',2);

INSERT INTO publisher
VALUES (1,'Everyman''s Library','NY'),
       (2,'Oxford University Press','NY'),
       (3,'Grand Central Publishing','Washington'),
       (4,'Simon & Schuster','Chicago');

SELECT *
FROM book;

SELECT *
FROM publisher;

ALTER TABLE book
ADD COLUMN fk_publisher_id;

ALTER TABLE book
ADD CONSTRAINT fk_book_publisher FOREIGN KEY (fk_publisher_id) REFERENCES publisher(publisher_id);

DROP TABLE book;
DROP TABLE publisher;

CREATE TABLE book
(
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    ISBN VARCHAR(32) NOT NULL,
    fk_publisher_id INTEGER REFERENCES publisher(publisher_id) NOT NULL
);