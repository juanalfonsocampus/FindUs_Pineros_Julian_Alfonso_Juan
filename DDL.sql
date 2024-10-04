CREATE SCHEMA FINDUS;
USE FINDUS;

CREATE TABLE Color_Pelo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE Color_Ojos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE Distintivos_Corporales(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE Sexo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    sexo VARCHAR(30) NOT NULL
);

CREATE TABLE Etnia(
    id INT AUTO_INCREMENT PRIMARY KEY,
    grupo_etnico VARCHAR(30) NOT NULL
);

CREATE TABLE Grupo_Etario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    grupo VARCHAR(30) NOT NULL
);

CREATE TABLE Grupo_Sanguineo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE Morgue(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE Causa_Muerte(
    id INT AUTO_INCREMENT PRIMARY KEY,
    causa VARCHAR(30) NOT NULL
);

CREATE TABLE Condicion_Restos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    condicion VARCHAR(30) NOT NULL
);

CREATE TABLE Parentesco(
    id INT AUTO_INCREMENT PRIMARY KEY,
    parentesco VARCHAR(30) NOT NULL
);

CREATE TABLE Agencia_Investigadora(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_agencia VARCHAR(50) NOT NULL
);

CREATE TABLE Departamento(
    id INT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(30) NOT NULL
);

-- Tablas con foreign keys
CREATE TABLE Municipio(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_departamento INT,
    municipio VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id)
);

CREATE TABLE Medico_Forense(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_morgue INT,
    nombre VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_morgue) REFERENCES Morgue(id)
);

CREATE TABLE Agente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_agencia INT,
    nombre VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL, -- Cambié INT a VARCHAR para números de teléfono
    FOREIGN KEY(id_agencia) REFERENCES Agencia_Investigadora(id)
);

CREATE TABLE Reporte_Inicial(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_parentesco INT,
    nombre_reportante VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_parentesco) REFERENCES Parentesco(id)
);

CREATE TABLE Personas_Desaparecidas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula INT NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    segundo_nombre VARCHAR(30),
    apellido VARCHAR(30) NOT NULL,
    segundo_apellido VARCHAR(30),
    id_sexo INT,
    FOREIGN KEY (id_sexo) REFERENCES Sexo(id),
    altura DECIMAL(3,2) NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    id_etnia INT,
    FOREIGN KEY (id_etnia) REFERENCES Etnia(id),
    edad_desaparecido INT NOT NULL,
    id_color_pelo INT,
    FOREIGN KEY (id_color_pelo) REFERENCES Color_Pelo(id),
    id_color_ojos INT,
    FOREIGN KEY (id_color_ojos) REFERENCES Color_Ojos(id),
    id_distintivo_corporal INT,
    FOREIGN KEY(id_distintivo_corporal) REFERENCES Distintivos_Corporales(id),
    descripcion_distintivo VARCHAR(100),
    condiciones_medicas VARCHAR(100),
    ropa VARCHAR(255),
    adn BOOLEAN NOT NULL,
    dental BOOLEAN NOT NULL,
    dactilar BOOLEAN NOT NULL,
    id_grupo_sanguineo INT,
    FOREIGN KEY (id_grupo_sanguineo) REFERENCES Grupo_Sanguineo(id)
);

CREATE TABLE Cadaveres(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_sexo INT,
    FOREIGN KEY(id_sexo) REFERENCES Sexo(id),
    id_etnia INT,
    FOREIGN KEY (id_etnia) REFERENCES Etnia(id),
    id_grupo_etario INT,
    FOREIGN KEY (id_grupo_etario) REFERENCES Grupo_Etario(id),
    altura_estimada DECIMAL(3,2),
    peso_estimado DECIMAL(5,2),
    fecha_encuentro DATE NOT NULL,
    id_municipio INT,
    FOREIGN KEY (id_municipio) REFERENCES Municipio(id),
    ropa VARCHAR(255),
    id_distintivo_corporal INT,
    FOREIGN KEY (id_distintivo_corporal) REFERENCES Distintivos_Corporales(id),
    descripcion_distintivo VARCHAR(255),
    adn BOOLEAN NOT NULL,
    dental BOOLEAN NOT NULL,
    dactilar BOOLEAN NOT NULL,
    id_grupo_sanguineo INT,
    FOREIGN KEY (id_grupo_sanguineo) REFERENCES Grupo_Sanguineo(id)
);

CREATE TABLE Expediente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_persona_desaparecida INT,
    FOREIGN KEY (id_persona_desaparecida) REFERENCES Personas_Desaparecidas(id),
    fecha_desaparicion DATE NOT NULL,
    id_municipio_desaparicion INT,
    FOREIGN KEY (id_municipio_desaparicion) REFERENCES Municipio(id),
    id_agente INT,
    FOREIGN KEY (id_agente) REFERENCES Agente(id),
    fecha_creacion_caso DATE NOT NULL,
    vehiculo_asociado VARCHAR(255),
    circunstancias TEXT NOT NULL,
    activo BOOLEAN NOT NULL
);

CREATE TABLE Autopsia(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_medico_forense INT,
    FOREIGN KEY (id_medico_forense) REFERENCES Medico_Forense(id),
    id_cadaver INT,
    FOREIGN KEY (id_cadaver) REFERENCES Cadaveres(id),
    id_morgue INT,
    FOREIGN KEY (id_morgue) REFERENCES Morgue(id),
    id_causa_muerte INT,
    FOREIGN KEY (id_causa_muerte) REFERENCES Causa_Muerte(id),
    id_condicion_restos INT,
    FOREIGN KEY (id_condicion_restos) REFERENCES Condicion_Restos(id),
    circunstancias TEXT NOT NULL
);
