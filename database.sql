CREATE DATABASE shopDB;
USE shopDB;

CREATE TABLE items (
    id          INT unsigned NOT NULL AUTO_INCREMENT,
    name        VARCHAR(150) NOT NULL,
    description VARCHAR(500) NOT NULL,
    image       LONGBLOB NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO items (name, description, image) VALUES
(),
();

#A user with read-only access to a simple table
CREATE USER 'user' IDENTIFIED BY 'G1f3HiAq45';
GRANT SELECT ON items TO 'user';
