use uso1;


CREATE TABLE Estudiantes (
    estudiante_id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Inscripciones (
    estudiante_id INT,
    curso_id INT,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id)
);




-- Tabla: Estudiantes
INSERT INTO Estudiantes (estudiante_id, nombre) VALUES
(1, 'Ana'),
(2, 'Luis'),
(3, 'María');

-- Tabla: Cursos
INSERT INTO Cursos (curso_id, nombre) VALUES
(101, 'Matemáticas'),
(102, 'Historia'),
(103, 'Biología');

-- Tabla: Inscripciones
INSERT INTO Inscripciones (estudiante_id, curso_id) VALUES
(1, 101),
(1, 102),
(2, 103),
(3, 101);

select * from estudiantes;
select * from cursos;
select * from inscripciones;


WITH EstudiantesConInscripciones AS (
    SELECT 
        i.estudiante_id,
        e.nombre AS nombre_estudiante,
        i.curso_id
    FROM Inscripciones i
    JOIN Estudiantes e ON i.estudiante_id = e.estudiante_id
)
SELECT * FROM EstudiantesConInscripciones;





WITH EstudiantesConInscripciones AS (
    SELECT 
        i.estudiante_id,
        e.nombre AS nombre_estudiante,
        i.curso_id
    FROM Inscripciones i
    JOIN Estudiantes e ON i.estudiante_id = e.estudiante_id)

SELECT 
    eci.nombre_estudiante,
    c.nombre AS nombre_curso
FROM EstudiantesConInscripciones eci
JOIN Cursos c ON eci.curso_id = c.curso_id;

