CREATE TABLE hoges (
    id SERIAL,
    name VARCHAR(32) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO hoges (name) VALUES ('fuga');
