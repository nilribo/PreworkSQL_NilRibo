-- Ejercicio 1
CREATE TABLE IF NOT EXISTS Clientes (
	id SERIAL PRIMARY KEY, 
	nombre VARCHAR(255),
	email VARCHAR(255)
);

INSERT INTO Public.Clientes(id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com')

UPDATE Public.Clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

DELETE FROM Public.Clientes
WHERE id = 1;

CREATE TABLE IF NOT EXISTS Pedidos (
	id SERIAL PRIMARY KEY,
	cliente_id INTEGER REFERENCES Public.Clientes (id),
	producto VARCHAR(255),
	cantidad INTEGER
);

INSERT INTO Public.Pedidos(id, cliente_id, producto, cantidad)
VALUES (1, 1, 'Camiseta', 2)
