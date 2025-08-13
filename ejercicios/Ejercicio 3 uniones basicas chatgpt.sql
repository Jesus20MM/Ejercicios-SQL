create database empleados_1;

use empleados_1;

CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    departamento VARCHAR(50),
    salario INT
);

INSERT INTO empleados (id, nombre, departamento, salario) VALUES
(1, 'Ana', 'Ventas', 18500),
(2, 'Luis', 'Ventas', 22000),
(3, 'Sofía', 'Marketing', 20000),
(4, 'Diego', 'Ventas', 19800),
(5, 'Irene', 'Marketing', 21500),
(6, 'Mario', 'Finanzas', 24000);


SELECT * FROM empleados;


select departamento, avg(salario) as promedio
from empleados
group by departamento
order by avg(salario) desc;

