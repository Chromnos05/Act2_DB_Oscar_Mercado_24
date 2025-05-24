INSERT INTO HorarioConsulta (id_horario, dia_semana, hora_inicio, hora_fin, id_medico)
VALUES (DEFAULT, 'Lunes', '08:00', '12:00', 1);

SELECT * FROM HorarioConsulta;

INSERT INTO Medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES 
(DEFAULT, 'Carlos Ruiz', 'Calle 12', '3001234567', 'Cartagena', 'Bolivar', '130001', '11111111A', '55555555', 'MED001', 'Titular'),
(DEFAULT, 'Lucía Gomez', 'Carrera 45', '3019876543', 'Barranquilla', 'Atlántico', '080001', '22222222B', '66666666', 'MED002', 'Interino'),
(DEFAULT, 'Pedro Diaz', 'Calle 33', '3206549871', 'Sincelejo', 'Sucre', '700001', '33333333C', '77777777', 'MED003', 'Sustituto'),
(DEFAULT, 'Sandra Melo', 'Calle 56', '3221112222', 'Santa Marta', 'Magdalena', '470001', '44444444D', '88888888', 'MED004', 'Titular'),
(DEFAULT, 'Julio Torres', 'Carrera 10', '3235556666', 'Valledupar', 'Cesar', '200001', '55555555E', '99999999', 'MED005', 'Interino');

SELECT * FROM medico;

INSERT INTO HorarioConsulta (dia_semana, hora_inicio, hora_fin, id_medico)
VALUES 
('Martes', '09:00', '12:00', 1),
('Miércoles', '10:00', '13:00', 2),
('Jueves', '14:00', '17:00', 3),
('Viernes', '08:00', '11:00', 4),
('Sábado', '07:00', '10:00', 5);

SELECT * FROM horarioconsulta, medico;

INSERT INTO Medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES 
(DEFAULT, 'Ana Lopez', 'Calle 100', '3000000001', 'Monteria', 'Cordoba', '230001', '66666666F', '11112222', 'MED006', 'Titular'),
(DEFAULT, 'Luis Herrera', 'Carrera 2', '3000000002', 'Cartagena', 'Bolivar', '130001', '77777777G', '22223333', 'MED007', 'Interino'),
(DEFAULT, 'Paula Restrepo', 'Calle 3', '3000000003', 'Medellin', 'Antioquia', '050001', '88888888H', '33334444', 'MED008', 'Sustituto'),
(DEFAULT, 'Camilo Mejia', 'Calle 4', '3000000004', 'Cali', 'Valle', '760001', '99999999I', '44445555', 'MED009', 'Titular'),
(DEFAULT, 'Valeria Silva', 'Calle 5', '3000000005', 'Bogota', 'Cundinamarca', '110111', '10101010J', '55556666', 'MED010', 'Interino'),
(DEFAULT, 'Oscar Paredes', 'Calle 6', '3000000006', 'Popayán', 'Cauca', '190001', '11111111K', '66667777', 'MED011', 'Sustituto'),
(DEFAULT, 'Luciano Perez', 'Calle 7', '3000000007', 'Neiva', 'Huila', '410001', '12121212L', '77778888', 'MED012', 'Titular'),
(DEFAULT, 'Nicolas Rojas', 'Calle 8', '3000000008', 'Ibague', 'Tolima', '730001', '13131313M', '88889999', 'MED013', 'Interino'),
(DEFAULT, 'Fernanda Ruiz', 'Calle 9', '3000000009', 'Pereira', 'Risaralda', '660001', '14141414N', '99990000', 'MED014', 'Titular'),
(DEFAULT, 'Martin Salazar', 'Calle 10', '3000000010', 'Manizales', 'Caldas', '170001', '15151515O', '11113333', 'MED015', 'Sustituto'),
(DEFAULT, 'Tatiana Gil', 'Calle 11', '3000000011', 'Armenia', 'Quindio', '630001', '16161616P', '22224444', 'MED016', 'Titular'),
(DEFAULT, 'Javier Mora', 'Calle 12', '3000000012', 'Villavicencio', 'Meta', '500001', '17171717Q', '33335555', 'MED017', 'Interino'),
(DEFAULT, 'Laura Cardenas', 'Calle 13', '3000000013', 'Tunja', 'Boyaca', '150001', '18181818R', '44446666', 'MED018', 'Sustituto'),
(DEFAULT, 'Daniel Medina', 'Calle 14', '3000000014', 'Florencia', 'Caqueta', '180001', '19191919S', '55557777', 'MED019', 'Titular'),
(DEFAULT, 'Alejandra Soto', 'Calle 15', '3000000015', 'San Andres', 'San Andres', '880001', '20202020T', '66668888', 'MED020', 'Interino');

SELECT * FROM medico;

INSERT INTO Medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, categoria)
VALUES (DEFAULT, 'Conor Hugo', 'Calle Mandarinas', '3000000021', 'Cartagena', 'Bolivar', '999999', '30303030U', '12345678', 'Interino');

SELECT * FROM medico;

INSERT INTO Medico (direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES ('Calle Sandra', '3000000030', 'Tunja', 'Boyaca', '000000', '40404040Z', '00000000', 'MED999', 'Titular');

SELECT * FROM medico;

INSERT INTO Medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES (1, 'Medico Duplicado', 'Calle Naranja', '3012345678', 'Cartagena', 'Bolivar', '123456', '99999999X', '00001111', 'MED_DUP', 'Sustituto');

SELECT * FROM medico;

UPDATE Medico
SET id_medico = 100
WHERE id_medico = 1;

SELECT * FROM medico;

UPDATE HorarioConsulta
SET id_medico = 9999
WHERE id_horario = 1;

SELECT * FROM horarioconsulta;

SELECT * FROM medico;

UPDATE Medico
SET nombre = NULL
WHERE id_medico = 2;

SELECT * FROM medico;

UPDATE Medico
SET id_medico = 'ABC'
WHERE id_medico = 3;

SELECT * FROM medico;

UPDATE Medico
SET telefono = '3209876543'
WHERE id_medico = 4;

SELECT * FROM medico;

UPDATE Medico
SET nombre = 12345
WHERE id_medico = 5;

SELECT * FROM medico;

UPDATE Vacacion
SET fecha_inicio = '2023-02-29'
WHERE id_vacacion = 1;

SELECT * FROM vacacion;

UPDATE Vacacion SET fecha_fin = '23-12-10' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '01/14/2023' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '-10/08/2023' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '12/30-2023' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '12-30-2023' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '2023-50-20' WHERE id_vacacion = 1;
UPDATE Vacacion SET fecha_fin = '2023-06-21' WHERE id_vacacion = 1;

UPDATE Medico
SET nombre = 'Actualizado', direccion = 'Nueva Dirección 123'
WHERE id_medico = 6;

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre Grupo ABCDE', direccion = 'Dirección ABCDE'
WHERE id_medico IN ('A', 'B', 'C', 'D', 'E');

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre XY', direccion = 'Dirección XY'
WHERE id_medico IN (7, 8);

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre A-B', direccion = 'Dirección A-B'
WHERE id_medico = 'A' AND id_medico = 'B';

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre Rango', direccion = 'Dirección Rango'
WHERE id_medico BETWEEN 10 AND 15;

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre GEQ16', direccion = 'Dirección GEQ16'
WHERE id_medico >= 16;

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre !=5', direccion = 'Dirección !=5'
WHERE id_medico != 5;

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre AZ', direccion = 'Dirección AZ'
WHERE nombre BETWEEN 'A' AND 'Z';

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre ABC', direccion = 'Dirección ABC'
WHERE nombre LIKE 'ABC%';

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre XYZ', direccion = 'Dirección XYZ'
WHERE nombre LIKE '%XYZ';

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre ABCD', direccion = 'Dirección ABCD'
WHERE nombre LIKE '%ABCD%';

SELECT * FROM medico;

UPDATE Medico
SET nombre = 'Nombre NULL', direccion = 'Dirección NULL'
WHERE nombre IS NULL;

SELECT * FROM medico;