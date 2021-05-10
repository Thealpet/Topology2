CREATE DATABASE shopDB;
USE shopDB;

CREATE TABLE plants (
    id          INT unsigned NOT NULL AUTO_INCREMENT,
    name        VARCHAR(150) NOT NULL,
    shortDescription VARCHAR(200) NOT NULL,
    longDescription VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);

DESCRIBE plants;

INSERT INTO plants (name, shortDescription, longDescription) VALUES
('Aloe Vera', 'En plante som ikke trengs å vanne ofte.', 'Aloevera er en flerårig sukulent plante i aloe-familien, bestående av tykke, lansettformede og taggede blader som vokser i en rosett og med en inntil 90 centimeter høy blomsterstand.'),
('Rose', 'Fin blomst å gi til noen du er glad i.', 'Hvis du skal plante roser i et bed hvor det har stått roser før, er det viktig at du bytter ut noe av jorda. Rosene tærer nemlig sterkt på jorda og jordtretthet kan lett oppstå.'),
('Kaktus', 'Stikker når du tar på den','idhfoigsoufgwiyGFOIegfuegfiyw'),
('Tulipan', 'fint da', 'jihdfuifgsofbvfbdbbdaj');

SELECT * FROM plants;


CREATE USER 'user' IDENTIFIED BY 'G1f3HiAq45';
GRANT SELECT ON plants TO 'user';
