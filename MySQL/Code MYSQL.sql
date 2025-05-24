USE hospital_db;

-- Inserción de médicos (5 primeros)
INSERT INTO medico (nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES
('Carlos Ruiz', 'Calle 12', '3001234567', 'Cartagena', 'Bolivar', '130001', '11111111A', '55555555', 'MED001', 'Titular'),
('Lucía Gomez', 'Carrera 45', '3019876543', 'Barranquilla', 'Atlántico', '080001', '22222222B', '66666666', 'MED002', 'Interino'),
('Pedro Diaz', 'Calle 33', '3206549871', 'Sincelejo', 'Sucre', '700001', '33333333C', '77777777', 'MED003', 'Sustituto'),
('Sandra Melo', 'Calle 56', '3221112222', 'Santa Marta', 'Magdalena', '470001', '44444444D', '88888888', 'MED004', 'Titular'),
('Julio Torres', 'Carrera 10', '3235556666', 'Valledupar', 'Cesar', '200001', '55555555E', '99999999', 'MED005', 'Interino');

-- Inserción de horarios de consulta para los médicos
INSERT INTO horarioconsulta (dia_semana, hora_inicio, hora_fin, id_medico)
VALUES
('Martes', '09:00:00', '12:00:00', 1),
('Miércoles', '10:00:00', '13:00:00', 2),
('Jueves', '14:00:00', '17:00:00', 3),
('Viernes', '08:00:00', '11:00:00', 4),
('Sábado', '07:00:00', '10:00:00', 5);

-- Inserción de 15 médicos más
INSERT INTO medico (nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES
('Ana Lopez', 'Calle 100', '3000000001', 'Monteria', 'Cordoba', '230001', '66666666F', '11112222', 'MED006', 'Titular'),
('Luis Herrera', 'Carrera 2', '3000000002', 'Cartagena', 'Bolivar', '130001', '77777777G', '22223333', 'MED007', 'Interino'),
('Paula Restrepo', 'Calle 3', '3000000003', 'Medellin', 'Antioquia', '050001', '88888888H', '33334444', 'MED008', 'Sustituto'),
('Camilo Mejia', 'Calle 4', '3000000004', 'Cali', 'Valle', '760001', '99999999I', '44445555', 'MED009', 'Titular'),
('Valeria Silva', 'Calle 5', '3000000005', 'Bogota', 'Cundinamarca', '110111', '10101010J', '55556666', 'MED010', 'Interino'),
('Oscar Paredes', 'Calle 6', '3000000006', 'Popayán', 'Cauca', '190001', '11111111K', '66667777', 'MED011', 'Sustituto'),
('Luciano Perez', 'Calle 7', '3000000007', 'Neiva', 'Huila', '410001', '12121212L', '77778888', 'MED012', 'Titular'),
('Nicolas Rojas', 'Calle 8', '3000000008', 'Ibague', 'Tolima', '730001', '13131313M', '88889999', 'MED013', 'Interino'),
('Fernanda Ruiz', 'Calle 9', '3000000009', 'Pereira', 'Risaralda', '660001', '14141414N', '99990000', 'MED014', 'Titular'),
('Martin Salazar', 'Calle 10', '3000000010', 'Manizales', 'Caldas', '170001', '15151515O', '11113333', 'MED015', 'Sustituto'),
('Tatiana Gil', 'Calle 11', '3000000011', 'Armenia', 'Quindio', '630001', '16161616P', '22224444', 'MED016', 'Titular'),
('Javier Mora', 'Calle 12', '3000000012', 'Villavicencio', 'Meta', '500001', '17171717Q', '33335555', 'MED017', 'Interino'),
('Laura Cardenas', 'Calle 13', '3000000013', 'Tunja', 'Boyaca', '150001', '18181818R', '44446666', 'MED018', 'Sustituto'),
('Daniel Medina', 'Calle 14', '3000000014', 'Florencia', 'Caqueta', '180001', '19191919S', '55557777', 'MED019', 'Titular'),
('Alejandra Soto', 'Calle 15', '3000000015', 'San Andres', 'San Andres', '880001', '20202020T', '66668888', 'MED020', 'Interino');

-- Inserción parcial con columna omitida (num_colegiado)
INSERT INTO medico (nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, categoria)
VALUES ('Conor Hugo', 'Calle Mandarinas', '3000000021', 'Cartagena', 'Bolivar', '999999', '30303030U', '12345678', 'Interino');

-- Inserción errónea: sin columna obligatoria (nombre)
-- Esta línea se debe probar para verificar restricción NOT NULL
INSERT INTO medico (direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES ('Calle Sandra', '3000000030', 'Tunja', 'Boyaca', '000000', '40404040Z', '00000000', 'MED999', 'Titular');

-- Mostrar registros de Medico y HorarioConsulta
SELECT * FROM medico;
SELECT * FROM horarioconsulta;

-- Inserción con clave primaria duplicada (provocará error si ya existe)
INSERT INTO medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria)
VALUES (1, 'Medico Duplicado', 'Calle Naranja', '3012345678', 'Cartagena', 'Bolivar', '123456', '99999999X', '00001111', 'MED_DUP', 'Sustituto');

-- Actualización de clave primaria (requiere ON UPDATE CASCADE si aplica)
UPDATE medico SET id_medico = 100 WHERE id_medico = 1;

-- Modificación de clave foránea a valor inexistente (generará error)
UPDATE horarioconsulta SET id_medico = 9999 WHERE id_horario = 1;

-- Asignar NULL a columna NOT NULL (generará error)
UPDATE medico SET nombre = NULL WHERE id_medico = 2;

-- Asignar valor no numérico a campo numérico (error)
UPDATE medico SET id_medico = 'ABC' WHERE id_medico = 3;

-- Asignar valor numérico como string (válido si campo es texto)
UPDATE medico SET telefono = '3209876543' WHERE id_medico = 4;

-- Asignar número a campo de texto (convertido automáticamente)
UPDATE medico SET nombre = '12345' WHERE id_medico = 5;

-- Inserción de fecha inválida (error: 2023-02-29 no es válida)
UPDATE vacacion SET fecha_inicio = '2023-02-29' WHERE id_vacacion = 1;

-- Fechas para prueba de formatos (algunas generarán error)
UPDATE vacacion SET fecha_fin = '23-12-10' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '01/14/2023' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '-10/08/2023' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '12/30-2023' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '12-30-2023' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '2023-50-20' WHERE id_vacacion = 1;
UPDATE vacacion SET fecha_fin = '2023-06-21' WHERE id_vacacion = 1;

-- Actualización por valor específico de PK
UPDATE medico SET nombre = 'Actualizado', direccion = 'Nueva Dirección 123' WHERE id_medico = 6;

-- Actualización por conjunto de PKs inexistentes (no tendrá efecto)
UPDATE medico SET nombre = 'Nombre Grupo ABCDE', direccion = 'Dirección ABCDE' WHERE id_medico IN ('A', 'B', 'C', 'D', 'E');

-- Actualización con valores de PK existentes
UPDATE medico SET nombre = 'Nombre XY', direccion = 'Dirección XY' WHERE id_medico IN (7, 8);

-- Condición contradictoria (no afecta ningún registro)
UPDATE medico SET nombre = 'Nombre A-B', direccion = 'Dirección A-B' WHERE id_medico = 'A' AND id_medico = 'B';

-- Rango entre valores
UPDATE medico SET nombre = 'Nombre Rango', direccion = 'Dirección Rango' WHERE id_medico BETWEEN 10 AND 15;

-- Condición >=
UPDATE medico SET nombre = 'Nombre GEQ16', direccion = 'Dirección GEQ16' WHERE id_medico >= 16;

-- Condición diferente
UPDATE medico SET nombre = 'Nombre !=5', direccion = 'Dirección !=5' WHERE id_medico != 5;

-- Entre valores de texto (alfabético)
UPDATE medico SET nombre = 'Nombre AZ', direccion = 'Dirección AZ' WHERE nombre BETWEEN 'A' AND 'Z';

-- LIKE inicio
UPDATE medico SET nombre = 'Nombre ABC', direccion = 'Dirección ABC' WHERE nombre LIKE 'ABC%';

-- LIKE fin
UPDATE medico SET nombre = 'Nombre XYZ', direccion = 'Dirección XYZ' WHERE nombre LIKE '%XYZ';

-- LIKE contiene
UPDATE medico SET nombre = 'Nombre ABCD', direccion = 'Dirección ABCD' WHERE nombre LIKE '%ABCD%';

-- IS NULL
UPDATE medico SET nombre = 'Nombre NULL', direccion = 'Dirección NULL' WHERE nombre IS NULL;

-- Mostrar tablas actualizadas
SELECT * FROM medico;
SELECT * FROM horarioconsulta;
SELECT * FROM vacacion;