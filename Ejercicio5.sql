/* EJERCICIO 5 */

/* 1. Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre (cadena de texto). */

CREATE TABLE Clientes (
  id INT,
  nombre VARCHAR(255)
);

/* 2. Insertar un cliente */

INSERT VALUES Clientes (id, nombre) 
VALUES (1, 'John')

/* 3. Actualizar nombre */

UPDATE Clientes SET nombre = 'John Doe' WHERE id = 1;

/* 4. Eliminar el cliente */

DELETE FROM Clientes WHERE id = 1;

/* 5. Leer todos los clientes */

SELECT * FROM Clientes;

/* 6. Crear tabla Pedidos */

CREATE TABLE Pedidos (
  id INT, 
  cliente_id INT
);

/* 7. Insertar un pedido */

INSERT VALUES Pedidos (id, cliente_id)
VALUES (1, 1);

/* 8. Actualizar el cliente_id */

UPDATE Pedidos SET cliente_id = 2 WHERE id = 1;

/* 9. Eliminar el pedido */

DELETE FROM Pedidos WHERE id = 1;

/* 10. Leer todos los pedidos */

SELECT * FROM Pedidos;

/* 11. Crear tabla Productos */

CREATE TABLE Productos (
  id INT, 
  nombre VARCHAR(255)
);

/* 12. Insertar un producto */

INSERT VALUES Productos (id, nombre)
VALUES (1, 'Camisa');

/* 13. Actualizar el nombre */

UPDATE Productos SET nombre = 'pantalón' WHERE id = 1;

/* 14. Eliminar el producto */

DELETE FROM Productos WHERE id = 1;

/* 15. Leer todos los productos */

SELECT * FROM Productos;

/* 16. Crear tabla DetallesPedido */

CREATE TABLE DetallesPedido (
  pedido_id INT,
  producto_id INT
);

/* 17. Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla "DetallesPedido". */

INSERT VALUES DetallesPedido (pedido_id, producto_id)
VALUES (1, 1);

/* 18. Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla "DetallesPedido". */

UPDATE DetallesPedido SET product_id = 2 WHERE pedido_id = 1;

/* 19. Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido". */

DELETE FROM DetallesPedido WHERE pedido_id = 1;

/* 20. Lee todos los detalles de pedido de la tabla DetallesPedido */

SELECT * FROM DetallesPedido;

/* 21. Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un inner join. */

SELECT 
  c.nombre, 
  p.id AS pedido_id
FROM Clientes c
INNER JOIN Pedidos p ON c.id = p.cliente_id;

/* 22. Realiza un LEFT JOIN para clientes y pedidos */

SELECT
  c.nombre, 
  p.id AS pedido_id
FROM Clientes c
LEFT JOIN Pedidos p ON c.id = p.clientes_id;

/* 23. Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un inner join. */

SELECT
  p.nombre, 
  dp producto_id
FROM Productos p
INNER JOIN DetallesPedido dp ON p.id = dp.pedido_id;

/* 24. Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un left join. */

SELECT
  p.nombre, 
  dp producto_id
FROM Productos p
LEFT JOIN DetallesPedido dp ON p.id = dp.pedido_id;

/* 25. Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla "Clientes". */

ALTER TABLE Clientes 
ADD telefono VARCHAR(255);

/* 26. Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de datos a entero. */

ALTER TABLE Clientes
ALTER COLUMN telefono TYPE INT; 

/* 27. Elimina la columna "telefono" de la tabla "Clientes". */

ALTER TABLE Clientes
DROP COLUMN telefono; 

/* 28. Cambia el nombre de la tabla "Clientes" a "Usuarios". */

ALTER TABLE Clientes
RENAME TO Usuarios;

/* 29. Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a "nombre_completo". */

ALTER TABLE Usuarios
ALTER COLUMN nombre
RENAME TO nombre_completo;

/* 30. Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios". */

ALTER TABLE Usuarios
ADD PRIMARY KEY (id);
