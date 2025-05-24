CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- Tabla: consultorio
CREATE TABLE consultorio (
  id_consultorio INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT
);

-- Tabla: medico
CREATE TABLE medico (
  id_medico INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT NOT NULL,
  direccion TEXT,
  telefono TEXT,
  poblacion TEXT,
  provincia TEXT,
  codigo_postal TEXT,
  nif TEXT,
  num_seguridad_social TEXT,
  num_colegiado TEXT,
  categoria TEXT
);

-- Tabla: paciente
CREATE TABLE paciente (
  id_paciente INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT,
  direccion TEXT,
  telefono TEXT,
  codigo_postal TEXT,
  nif TEXT,
  num_seguridad_social TEXT,
  id_medico_asignado INT,
  FOREIGN KEY (id_medico_asignado) REFERENCES medico(id_medico)
);

-- Tabla: citamedica
CREATE TABLE citamedica (
  id_cita INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE,
  hora TIME,
  id_paciente INT,
  id_medico INT,
  id_consultorio INT,
  FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
  FOREIGN KEY (id_consultorio) REFERENCES consultorio(id_consultorio)
);

-- Tabla: horarioconsulta
CREATE TABLE horarioconsulta (
  id_horario INT AUTO_INCREMENT PRIMARY KEY,
  dia_semana TEXT,
  hora_inicio TIME,
  hora_fin TIME,
  id_medico INT,
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

-- Tabla: empleado
CREATE TABLE empleado (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT,
  direccion TEXT,
  telefono TEXT,
  poblacion TEXT,
  provincia TEXT,
  codigo_postal TEXT,
  nif TEXT,
  num_seguridad_social TEXT,
  tipo_empleado TEXT
);

-- Tabla: vacacion
CREATE TABLE vacacion (
  id_vacacion INT AUTO_INCREMENT PRIMARY KEY,
  fecha_inicio DATE,
  fecha_fin DATE,
  tipo TEXT,
  id_medico INT,
  id_empleado INT,
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

-- Tabla: enfermedad
CREATE TABLE enfermedad (
  id_enfermedad INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT,
  descripcion TEXT
);

-- Tabla: sintoma
CREATE TABLE sintoma (
  id_sintoma INT AUTO_INCREMENT PRIMARY KEY,
  descripcion TEXT
);

-- Tabla: enfermedad_sintoma
CREATE TABLE enfermedad_sintoma (
  id_enfermedad INT,
  id_sintoma INT,
  PRIMARY KEY (id_enfermedad, id_sintoma),
  FOREIGN KEY (id_enfermedad) REFERENCES enfermedad(id_enfermedad),
  FOREIGN KEY (id_sintoma) REFERENCES sintoma(id_sintoma)
);

-- Tabla: diagnostico
CREATE TABLE diagnostico (
  id_diagnostico INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT,
  descripcion TEXT,
  id_cita INT,
  id_enfermedad INT,
  FOREIGN KEY (id_cita) REFERENCES citamedica(id_cita),
  FOREIGN KEY (id_enfermedad) REFERENCES enfermedad(id_enfermedad)
);

-- Tabla: receta
CREATE TABLE receta (
  id_receta INT AUTO_INCREMENT PRIMARY KEY,
  fecha_inicio DATE,
  fecha_fin DATE,
  id_diagnostico INT,
  FOREIGN KEY (id_diagnostico) REFERENCES diagnostico(id_diagnostico)
);

-- Tabla: laboratorio
CREATE TABLE laboratorio (
  id_laboratorio INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT,
  direccion TEXT
);

-- Tabla: medicamento
CREATE TABLE medicamento (
  id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
  nombre_comercial TEXT,
  nombre_generico TEXT,
  presentacion TEXT,
  es_generico BOOLEAN,
  dosis_adulto TEXT,
  dosis_nino TEXT,
  necesita_receta BOOLEAN,
  cobertura_pos BOOLEAN,
  unidades_disponibles INT,
  id_laboratorio INT,
  FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio)
);

-- Tabla: principioactivo
CREATE TABLE principioactivo (
  id_principio INT AUTO_INCREMENT PRIMARY KEY,
  nombre TEXT
);

-- Tabla: medicamento_principio
CREATE TABLE medicamento_principio (
  id_medicamento INT,
  id_principio INT,
  PRIMARY KEY (id_medicamento, id_principio),
  FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento),
  FOREIGN KEY (id_principio) REFERENCES principioactivo(id_principio)
);

-- Tabla: contraindicación
CREATE TABLE contraindicacion (
  id_contra INT AUTO_INCREMENT PRIMARY KEY,
  descripcion TEXT
);

-- Tabla: medicamento_contraindicacion
CREATE TABLE medicamento_contraindicacion (
  id_medicamento INT,
  id_contra INT,
  PRIMARY KEY (id_medicamento, id_contra),
  FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento),
  FOREIGN KEY (id_contra) REFERENCES contraindicacion(id_contra)
);

-- Tabla: medicamento_receta
CREATE TABLE medicamento_receta (
  id_receta INT,
  id_medicamento INT,
  cantidad INT,
  dosis TEXT,
  PRIMARY KEY (id_receta, id_medicamento),
  FOREIGN KEY (id_receta) REFERENCES receta(id_receta),
  FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);

-- Tabla: sustitucion
CREATE TABLE sustitucion (
  id_sustitucion INT AUTO_INCREMENT PRIMARY KEY,
  fecha_alta DATE NOT NULL,
  fecha_baja DATE,
  id_medico INT,
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);
