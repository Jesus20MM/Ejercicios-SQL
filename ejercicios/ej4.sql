create database uso2;

use uso2;


-- Tabla Estudiantes
CREATE TABLE Estudiantes (
    estudiante_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

INSERT INTO Estudiantes (estudiante_id, nombre) VALUES
(1, 'Juan Pérez'),
(2, 'Laura Gómez'),
(3, 'Ana Torres'),
(4, 'Mario Rodríguez');

-- Tabla Profesores
CREATE TABLE Profesores (
    profesor_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

INSERT INTO Profesores (profesor_id, nombre) VALUES
(201, 'Dr. Ramírez'),
(202, 'Mtra. González'),
(203, 'Ing. Martínez'),
(204, 'Dr. López');

-- Tabla Cursos
CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    profesor_id INT,
    FOREIGN KEY (profesor_id) REFERENCES Profesores(profesor_id)
);

INSERT INTO Cursos (curso_id, nombre, profesor_id) VALUES
(101, 'Álgebra Lineal', 201),
(102, 'Física I', 202),
(103, 'Bases de Datos', 203);

-- Tabla Inscripciones
CREATE TABLE Inscripciones (
    estudiante_id INT,
    curso_id INT,
    PRIMARY KEY (estudiante_id, curso_id),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id)
);

INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES
(1, 101),  -- Juan Pérez - Álgebra Lineal
(1, 102),  -- Juan Pérez - Física I
(2, 103),  -- Laura Gómez - Bases de Datos
(3, 101),  -- Ana Torres - Álgebra Lineal
(4, 103);  -- Mario Rodríguez - Bases de Datos


select * from estudiantes;
select * from profesores;
select * from cursos;
select * from inscripciones;



SELECT 
    e.nombre AS nombre_estudiante,
    c.nombre AS nombre_curso,
    p.nombre AS nombre_profesor
FROM inscripciones i
JOIN estudiantes e ON i.estudiante_id = e.estudiante_id
JOIN cursos c ON i.curso_id = c.curso_id
JOIN profesores p ON c.profesor_id = p.profesor_id;




