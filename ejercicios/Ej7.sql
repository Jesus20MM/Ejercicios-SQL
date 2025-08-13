create database uso4;

use uso4;


-- Crear tabla empleados
CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Crear tabla proyectos
CREATE TABLE proyectos (
    proyecto_id INT PRIMARY KEY,
    nombre_proyecto VARCHAR(100),
    empleado_id INT
);

-- Insertar datos en empleados
INSERT INTO empleados (empleado_id, nombre) VALUES
(1, 'Ana García'),
(2, 'Luis Torres'),
(3, 'Marta Pérez');

-- Insertar datos en proyectos
INSERT INTO proyectos (proyecto_id, nombre_proyecto, empleado_id) VALUES
(101, 'Dashboard Ventas', 1),
(102, 'Automatización Reporte', NULL),
(103, 'Segmentación Clientes', 2),
(104, 'Análisis ABC', 5);



#con left join
Select p.proyecto_id, p.nombre_proyecto, e.nombre as nombre_empelado
From empleados e
left join proyectos p
	On e.empleado_id = p.empleado_id;

#misma consulta previa pero con right join

Select p.proyecto_id, p.nombre_proyecto, e.nombre as nombre_empelado
From proyectos p
right join empleados e
	On e.empleado_id = p.empleado_id;





