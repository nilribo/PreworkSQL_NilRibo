/* EJERCICIO 3 */

/* 1. Crear tabla Productos */

CREATE TABLE Productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  precio DECIMAL
);

/* 2. Insertar cinco registros */

INSERT INTO Productos (id, nombre, precio) VALUES (1, 'Camiseta', 20.00);
INSERT INTO Productos (id, nombre, precio) VALUES (2, 'Pantalón', 30.00);
INSERT INTO Productos (id, nombre, precio) VALUES (3, 'Zapatos', 50.00);
INSERT INTO Productos (id, nombre, precio) VALUES (4, 'Libro', 15.00);
INSERT INTO Productos (id, nombre, precio) VALUES (5, 'Taza', 10.00);

/* 3. Actualizar el precio */

UPDATE Productos SET precio = 25.00 WHERE id = 1;

/* 4. Eliminar un producto */

DELETE FROM Productos WHERE id = 5;

/* 5. Consulta con Inner JOIN */

SELECT
  u.nombre,
  p.nombre AS nombre_producto
FROM Ventas v
INNER JOIN Usuarios u ON v.usuario_id = u.id
INNER JOIN Productos p ON v.producto_id = p.id;
