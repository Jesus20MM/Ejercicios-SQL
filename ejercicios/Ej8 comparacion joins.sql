create database uso8;

use uso8;


-- Crear tablas
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100)
);

CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Insertar datos
INSERT INTO clientes (cliente_id, nombre, ciudad) VALUES
(1, 'Ana Torres', 'Madrid'),
(2, 'Luis García', 'Barcelona'),
(3, 'Marta López', 'Sevilla'),
(4, 'Pablo Ruiz', 'Valencia');

INSERT INTO pedidos (pedido_id, cliente_id, fecha, total) VALUES
(101, 1, '2023-01-10', 150),
(102, 2, '2023-01-12', 200),
(103, 1, '2023-01-15', 300),
(104, 2, '2023-01-18', 120);

select * from clientes;
select * from pedidos;

# ====== Consulta con left join ========
Select c.cliente_id, c.nombre, c.ciudad, p.fecha, p.total
From clientes c
Left join pedidos p
	On c.cliente_id = p.cliente_id;


# ====== Misma consulta, pero con right join ========
Select c.cliente_id, c.nombre, c.ciudad, p.fecha, p.total
From pedidos p
right join clientes c
	On c.cliente_id = p.cliente_id;



# ====== Consulta con right join ========

Select c.cliente_id, c.nombre, c.ciudad, p.fecha, p.total
From clientes c
right join pedidos p
	On c.cliente_id = p.cliente_id;

# ====== Misma consulta pero con left join ========

Select c.cliente_id, c.nombre, c.ciudad, p.fecha, p.total
From pedidos p
left join clientes c
	On c.cliente_id = p.cliente_id;
