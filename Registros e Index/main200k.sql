CREATE TABLE personas (
    id_persona INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    primer_apellido TEXT NOT NULL,
    segundo_apellido TEXT NOT NULL,
    email TEXT NOT NULL
);

.mode csv

.import 'export200k.csv' temporal
.import 'export200k.csv' temporal
.import 'export200k.csv' temporal
.import 'export200k.csv' temporal
.import 'export200k.csv' temporal

INSERT INTO personas(nombre,primer_apellido,segundo_apellido, email)
SELECT nombre,primer_apellido,segundo_apellido, email
FROM temporal;

--CREATE INDEX idx_email ON personas (email);
--DROP INDEX idx_email;
