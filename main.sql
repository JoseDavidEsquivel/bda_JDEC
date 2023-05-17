-- Crear la tabla "PERSONAS"
CREATE TABLE personas (
    id_persona INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    apellido_materno TEXT NOT NULL,
    apellido_paterno TEXT NOT NULL,
    email TEXT NOT NULL
);

.mode csv

.import 'basededatos.csv' personas
