/* Ejercicio 2 */

/* 1. Crea una base de datos llamada 'MiBaseDeDatos' */

CREATE DATABASE MiBaseDeDatos;

/* 2. Crea una tabla llamada 'Usuarios' con las columnas: id (entero, clave primaria), nombre (texto) y edad (entero) */

CREATE TABLE usuarios (
	id SERIAL PRIMARY KEY NOT NULL,
	nombre VARCHAR (255) NOT NULL,
	edad INTEGER NOT NULL
);

/* 3. Inserta dos registros en la tabla 'Usuarios' */

INSERT INTO usuarios (nombre, edad)
VALUES ('Jose', 35), ('Juan', 30);

/* 4. Actualiza la edad de un usuario en la tabla 'Usuarios' */

UPDATE usuarios
SET edad = 32
WHERE nombre = 'Jose';

/* 5. Elimina un usuario de la tabla 'Usuarios' */

DELETE FROM usuarios
WHERE id = 1;

/* Nivel moderado: */

/* 1. Crea una tabla llamada 'Ciudades' con las columnas: id (entero, clave primaria), nombre (texto) y pais (texto) */

CREATE TABLE ciudades (
	id SERIAL PRIMARY KEY NOT NULL, 
	nombre VARCHAR (255),
	pais VARCHAR (255)
);

/* 2. Inserta al menos tres registros en la tabla 'Ciudades' */

INSERT INTO ciudades (nombre, pais)
VALUES ('Barcelona', 'España'), ('Madrid', 'España'), ('París', 'Francia'), ('Roma', 'Italia')

/* 3. Crea una foreign key en la tabla 'Usuarios' que se relacione con la columna id de la tabla 'Ciudades' */

ALTER TABLE usuarios
ADD CONSTRAINT fk_usuario
FOREIGN KEY (ciudades.id) REFERENCES ciudades (id)

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza LEFT JOIN) */

SELECT
	u.nombre, 
	c.nombre AS ciudad, 
	c.pais
FROM usuarios u
LEFT JOIN ciudades c
ON c.id = u.id;

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN) */

SELECT
	u.nombre, 
	c.nombre AS ciudad, 
	c.pais
FROM usuarios u
INNER JOIN ciudades c
ON c.id = u.id;