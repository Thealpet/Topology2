/*CREATE DATABASE all_the_things;
USE all_the_things;

CREATE TABLE lonely_heroes (
    id             INT unsigned NOT NULL AUTO_INCREMENT, 
    name           VARCHAR(150) NOT NULL,
    PRIMARY KEY     (id)
);
 
# Not needed but nice for debug output
DESCRIBE lonely_heroes;

INSERT INTO lonely_heroes (name) VALUES
('Superman'), ('Batman'), ('Iron Man'); 



# Not needed but nice for debug output
SELECT * FROM lonely_heroes;

# A user with read-only access to a single table
CREATE USER 'anonymous' IDENTIFIED BY 'PiWaC!23CyZzkAYYpi&2S';
GRANT SELECT ON lonely_heroes TO 'anonymous';*/


CREATE DATABASE shopDB;
USE shopDB;

CREATE TABLE plants (
    id          INT unsigned NOT NULL AUTO_INCREMENT,
    name        VARCHAR(150) NOT NULL,
    description VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

DESCRIBE plants;

INSERT INTO plants (name, description) VALUES
('Aloe Vera', 'En plante som ikke trengs å vanne ofte.');

SELECT * FROM plants;


CREATE USER 'user' IDENTIFIED BY 'G1f3HiAq45';
GRANT SELECT ON plants TO 'user';
