create database indiceVSclaveprimaria;

use indiceVSclaveprimaria;

CREATE TABLE clientes (
   id_cliente INT PRIMARY KEY,   -- clave primaria (única)
   nombre VARCHAR(50),
   ciudad VARCHAR(50)
);

INSERT INTO clientes (id_cliente, nombre, ciudad) VALUES
(1, 'Juan Pérez', 'CDMX'),
(2, 'Ana López', 'Monterrey'),
(3, 'Carlos Díaz', 'CDMX'),
(4, 'Ana López', 'Guadalajara'),
(5, 'Lucía Torres', 'CDMX');

select * from clientes;


# ---- bsucamos por clave primaria
SELECT * FROM clientes WHERE id_cliente = 2;


# ---- bsucamos por columna sin indice
SELECT * FROM clientes WHERE nombre = 'Ana López';

#----- Crear un índice en la columna ciudad
CREATE INDEX idx_ciudad ON clientes(ciudad);

#----- Buscamos usando el índice 
SELECT * FROM clientes WHERE ciudad = 'CDMX';


#---- Intentar romper la clave primaria
INSERT INTO clientes (id_cliente, nombre, ciudad)
VALUES (2, 'Pedro Morales', 'Tijuana');



