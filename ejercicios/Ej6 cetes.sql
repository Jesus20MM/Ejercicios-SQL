create database uso3;


use uso3;

-- Crear tablas
CREATE TABLE Estudiantes (
    estudiante_id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    nombre_curso VARCHAR(50)
);

CREATE TABLE Inscripciones (
    estudiante_id INT,
    curso_id INT,
    calificacion INT,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id)
);

-- Insertar datos
INSERT INTO Estudiantes VALUES
(1, 'Ana'),
(2, 'Luis'),
(3, 'Beatriz'),
(4, 'Carlos');

INSERT INTO Cursos VALUES
(101, 'Matemáticas'),
(102, 'Historia'),
(103, 'Física');

INSERT INTO Inscripciones VALUES
(1, 101, 95),
(2, 101, 95),
(3, 101, 91),
(4, 101, 89),
(2, 102, 78),
(3, 102, 88),
(1, 103, 85),
(3, 103, 91),
(4, 103, 91);



#consulta asociada a MaximasCalificaciones
							SELECT 
								i.curso_id,
								MAX(i.calificacion) AS max_calificacion
							FROM Inscripciones i
							GROUP BY i.curso_id;

#consulta asociada a EstudiantesDescatados
							 SELECT 
									i.curso_id,
									i.estudiante_id,
									i.calificacion
								FROM Inscripciones i
								JOIN MaximasCalificaciones m
									ON i.curso_id = m.curso_id AND i.calificacion = m.max_calificacion;
        
        
        
        
WITH MaximasCalificaciones AS (
    SELECT
        i.curso_id,
        MAX(i.calificacion) AS max_calificacion
    FROM Inscripciones i
    GROUP BY i.curso_id
),

 
EstudiantesDestacados AS (
    SELECT 
        i.curso_id,
        i.estudiante_id,
        i.calificacion
    FROM Inscripciones i
    JOIN MaximasCalificaciones m
        ON i.curso_id = m.curso_id AND i.calificacion = m.max_calificacion
)

SELECT 
    c.nombre_curso,
    e.nombre AS nombre_estudiante,
    ed.calificacion
FROM EstudiantesDestacados ed
JOIN Estudiantes e ON ed.estudiante_id = e.estudiante_id
JOIN Cursos c ON ed.curso_id = c.curso_id
ORDER BY c.nombre_curso, e.nombre
