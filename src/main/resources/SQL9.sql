CREATE TABLE person
(
    person_id  INT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name  VARCHAR(64) NOT NULL
);

CREATE TABLE passport
(
    passport_id        INT PRIMARY KEY,
    serial_number      INT NOT NULL,
    fk_passport_person INT UNIQUE REFERENCES person (person_id)
);

ALTER TABLE passport
ADD column registration TEXT  ;


INSERT INTO person
VALUES
    (1, 'Jhon', 'Snow'),
    (2,'Ned','Stark'),
    (3,'Rob','Botheration');

INSERT INTO passport
VALUES
    (1,123456,1,'Winterfell'),
    (2,789012,2,'Winterfell'    ),
    (3,345678,3,'King''s Landing');


