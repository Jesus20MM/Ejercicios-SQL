use tienda;

-- Tabla de clientes
CREATE TABLE Clientes (
    id_cliente INT,
    nombre VARCHAR(50)
);

-- Tabla de pedidos
CREATE TABLE Pedidos (
    id_pedido INT,
    id_cliente INT,
    producto VARCHAR(50)
);

-- Datos para Clientes
INSERT INTO Clientes VALUES (1, 'Ana'), (2, 'Luis'), (3, 'María');

-- Datos para Pedidos
INSERT INTO Pedidos VALUES (101, 1, 'Laptop'),
                           (102, 2, 'Teclado'),
                           (103, 1, 'Mouse');
                           
                           
Select p.id_pedido, c.nombre, p.producto
From clientes c 
Inner join pedidos p
	On c.id_cliente = p.id_cliente;



Select p.id_pedido, c.nombre, p.producto
From pedidos p
left join clientes c 
	On c.id_cliente = p.id_cliente;