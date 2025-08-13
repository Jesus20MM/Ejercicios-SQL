create database uso9;

use uso9;


CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE proyectos (
    proyecto_id INT PRIMARY KEY,
    nombre_proyecto VARCHAR(50),
    empleado_id INT
);

INSERT INTO empleados (empleado_id, nombre) VALUES
(1, 'Ana'),
(2, 'Luis'),
(3, 'Marta'),
(4, 'Carlos');

INSERT INTO proyectos (proyecto_id, nombre_proyecto, empleado_id) VALUES
(101, 'Proyecto Alfa', 1),
(102, 'Proyecto Beta', NULL),
(103, 'Proyecto Gamma', 3),
(104, 'Proyecto Delta', NULL);


Select e.nombre as nombre_empleado, p.proyecto_id, p.nombre_proyecto
From empleados e
Right join proyectos p
	On e.empleado_id = p.empleado_id;
    
    
Select e.nombre as nombre_empleado, p.proyecto_id, p.nombre_proyecto
From proyectos p 
Left join empleados e
	On e.empleado_id = p.empleado_id;


