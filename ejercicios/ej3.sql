create database uso1;

use uso1;

CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

INSERT INTO Clientes (cliente_id, nombre) VALUES
(1, 'Ana Martínez'),
(2, 'Luis Gómez'),
(3, 'Marta Sánchez'),
(4, 'Pedro Morales');

INSERT INTO Pedidos (pedido_id, cliente_id, fecha) VALUES
(101, 1, '2024-05-10'),
(102, 3, '2024-05-12'),
(103, 1, '2024-06-01'),
(104, 2, '2024-07-15');


drop table pedidos;

Select c.nombre, p.pedido_id, p.fecha
From pedidos p
Inner join clientes c
	On c.cliente_id = p.cliente_id;

SELECT c.nombre, p.pedido_id, p.fecha
FROM Clientes c
INNER JOIN Pedidos p 
ON c.cliente_id = p.cliente_id;

