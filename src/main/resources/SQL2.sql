CREATE TABLE publisher
(
    publisher_id INTEGER PRIMARY KEY,
    org_name     VARCHAR(128) NOT NULL,
    address      TEXT         NOT NULL
);

CREATE TABLE book
(
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    ISBN VARCHAR(32) NOT NULL
);

DROP TABLE publisher;
DROP TABLE book;