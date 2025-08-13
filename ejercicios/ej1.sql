create database empleados5;

use empleados5;




CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(50)
);

CREATE TABLE empleado_departamento (
    id_empleado INT,
    id_departamento INT
);

CREATE TABLE proyectos (
    id_proyecto INT PRIMARY KEY,
    nombre_proyecto VARCHAR(50)
);

CREATE TABLE empleado_proyecto (
    id_empleado INT,
    id_proyecto INT,
    horas_trabajadas INT
);

-- DATOS

-- Empleados
INSERT INTO empleados (id_empleado, nombre) VALUES
(1, 'Ana López'),
(2, 'Juan Pérez'),
(3, 'Marta Sánchez'),
(4, 'Luis Hernández');

-- Departamentos
INSERT INTO departamentos (id_departamento, nombre_departamento) VALUES
(10, 'Finanzas'),
(20, 'Recursos Humanos');

-- Relación empleados-departamentos
INSERT INTO empleado_departamento (id_empleado, id_departamento) VALUES
(1, 10),
(2, 20),
(3, 10);

-- Proyectos
INSERT INTO proyectos (id_proyecto, nombre_proyecto) VALUES
(100, 'Proyecto A'),
(200, 'Proyecto B');

-- Relación empleados-proyectos
INSERT INTO empleado_proyecto (id_empleado, id_proyecto, horas_trabajadas) VALUES
(1, 100, 20),
(1, 200, 10),
(3, 100, 15);



SELECT * FROM empleados;
SELECT * FROM departamentos;
SELECT * FROM empleado_departamento;
SELECT * FROM proyectos;
SELECT * FROM empleado_proyecto;



SELECT 
    e.nombre AS nombre_empleado,
    d.nombre_departamento,
    p.nombre_proyecto,
    epj.horas_trabajadas
FROM empleados e
LEFT JOIN empleado_departamento ed 
ON e.id_empleado = ed.id_empleado
LEFT JOIN departamentos d 
ON ed.id_departamento = d.id_departamento
LEFT JOIN empleado_proyecto epj 
ON e.id_empleado = epj.id_empleado
LEFT JOIN proyectos p 
ON epj.id_proyecto = p.id_proyecto
ORDER BY e.id_empleado, p.id_proyecto;
