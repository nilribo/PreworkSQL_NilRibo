/* EJERCICIO 4 */

/* 1. Crear tabla Pedidos */

CREATE TABLE Pedidos (
  id INT PRIMARY KEY,
  id_usuario INT,
  id_producto INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios (id),
  FOREIGN KEY (id_producto) REFERENCES Productos (id)
);

/* 2. Insertar tres registros */

INSERT INTO Pedidos (id_usuario, id_producto) VALUES (1, 1);
INSERT INTO Pedidos (id_usuario, id_producto) VALUES (2, 3);
INSERT INTO Pedidos (id_usuario, id_producto) VALUES (3, 2);

/* 3. Consulta con LEFT JOIN y COALESCE */

SELECT
  u.nombre,
  COALESCE(p.nombre, 'No ha realizado ningún pedido') AS nombre_producto
FROM Usuarios u
LEFT JOIN Pedidos p ON u.id = p.id_usuario
ORDER BY u.nombre;

/* 4. Consulta con LEFT JOIN */

SELECT
  u.nombre,
  p.nombre AS nombre_producto
FROM Usuarios u
LEFT JOIN Pedidos p ON u.id = p.id_usuario;

/* 5. Agregar columna "Cantidad" y actualizar registros */

ALTER TABLE Pedidos ADD cantidad INT;

UPDATE Pedidos SET cantidad = 1 WHERE id = 1;
UPDATE Pedidos SET cantidad = 2 WHERE id = 2;
UPDATE Pedidos SET cantidad = 3 WHERE id = 3;

