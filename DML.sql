INSERT INTO Color_Pelo(color)
VALUES('rubio'),('castaño'),('negro'),('amarillo'),('rojo'),('azul'),('otro');

INSERT INTO Color_Ojos(color)
VALUES('cafe'),('avellana'),('azul'),('verde'),('gris'),('otro');

INSERT INTO Distintivos_Corporales(tipo) 
VALUES('Tatuaje'),('Cicatriz'),('Perforacion'),('Deformidad'),('Protesis');

INSERT INTO Sexo(sexo) 
VALUES('Masculino'),('Femenino'),('Intersexual');

INSERT INTO Etnia(grupo_etnico) 
VALUES('Rom'),('Caucasico'),('Afrocolombiano'),('Indigena'),('Raizal'),('Mestizo'),('Otro');

INSERT INTO Grupo_Etario(grupo)
VALUES('Infancia (0-5)'),('Niñez (6-11)'),('Adolescencia (12-18)'),('Adulto Joven (19-25)'),('Adulto (25-60)'),('Vejez (60+)');

INSERT INTO Grupo_Sanguineo(tipo)
VALUES('A+'),('A-'),('B+'),('B-'),('O+'),('O-'),('AB+'),('AB-');

INSERT INTO Morgue(nombre)
VALUES('Medicina Legal Norte'),('Medicina Legal Sur'),('Morgue UIS'),('Morgue Hospital Universitario'),('Morgue Cold Feet');

INSERT INTO Causa_Muerte(causa)
VALUES('Natural'),('Accidente'),('Homicidio'),('Suicidio'),('No determinada');

INSERT INTO Condicion_Restos(condicion) 
VALUES('Cara Reconocible'),('Lesiones traumaticas'),('Descompuesto'),('Quemado'),('Mumificado'),('Esqueleto Parcial');

INSERT INTO Parentesco(parentesco) 
VALUES('Familiar'),('Amigo'),('Conocido'),('Pareja');

INSERT INTO Agencia_Investigadora(nombre_agencia) 
VALUES('FBI'),('CIA'),('Interpol'),('SIJIN');

INSERT INTO Departamento(departamento)
VALUES('Santander'),('Boyacá'),('Cundinamarca');

-- Municipios
INSERT INTO Municipio(municipio,id_departamento)
VALUES('Bucaramanga',1),('Girón',1),('Barrancabermeja',1),('Socorro',1),('Floridablanca',1);

INSERT INTO Municipio(municipio,id_departamento)
VALUES('Tunja',2),('Soatá',2),('Miraflores',2),('Villa de Leyva',2),('Paipa',2);

INSERT INTO Municipio(municipio,id_departamento)
VALUES('Granada',3),('Zipaquirá',3),('Chía',3),('Soacha',3),('Girardot',3);

-- Médicos forenses
INSERT INTO Medico_Forense(id_morgue, nombre)
VALUES(1, 'Dra. Elena Carrasco'),(2, 'Dr. Javier Montoya'),(3, 'Dra. Lucía Fernández'),(4, 'Dr. Samuel Prieto'),(5, 'Dra. Mariana Solero');

-- Agentes
INSERT INTO Agente(id_agencia, nombre, telefono)
VALUES(1, 'Inspector Leo Vargas', '55501'),(2, 'Detective Clara Mendoza', '55590'),(3, 'Detective Samuel Ríos', '55521'),(4, 'Agente Ana Torres', '55584');

-- Reporte inicial
INSERT INTO Reporte_Inicial(id_parentesco, nombre_reportante)
VALUES(1, 'Sofía Alarcón'),(1, 'Bruno Silva'),(1, 'Valentina Cuevas'),(2, 'Mateo Romero'),(2, 'Lucia Vargas'),(2, 'Isabela Paredes'),(1, 'Diego Salazar'),(1, 'Camila Estrada'),(1, 'Leonardo Torres'),(3, 'Renata Gómez'),(3, 'Gabriel Castillo'),(4, 'Paula Medina'),(4, 'Julián Cortés'),(4, 'Marina López'),(4, 'Andrés Ruiz'),(1, 'Teresa Delgado'),(1, 'Simón Cabrera'),(1, 'Carolina Jiménez'),(1, 'Rodrigo Peña'),(1, 'Roberto Lorca');

-- Personas desaparecidas
INSERT INTO Personas_Desaparecidas(cedula, nombre, segundo_nombre, apellido, segundo_apellido, id_sexo, altura, peso, id_etnia, edad_desaparecido, id_color_pelo, id_color_ojos, id_distintivo_corporal, descripcion_distintivo, condiciones_medicas, ropa, adn, dental, dactilar, id_grupo_sanguineo)
VALUES(1005050621, 'Juan', 'José', 'Almeida', 'Castillo', 1, 1.75, 80.25, 1, 25, 1, 1, 1, 'Tatuaje de águila en la espalda', 'Diabetes', 'Camisa roja, pantalón blanco y zapatos azules', 1, 1, 1, 4), 
(1005050622, 'María', 'Elena', 'Sánchez', 'Pérez', 2, 1.65, 60, 2, 30, 2, 1, 1, 'Tatuaje de corazón', 'Ninguna', 'Blusa blanca y jeans', 1, 1, 1, 5), 
(1005050623, 'Luis', 'Fernando', 'Gómez', 'Torres', 1, 1.80, 75, 3, 22, 1, 1, NULL, NULL, 'Ninguna', 'Camisa negra y pantalones cortos', 1, 0, 1, 5), 
(1005050624, 'Sofía', 'Isabel', 'Mendoza', 'López', 2, 1.70, 55, 4, 27, 1, 1, 1, 'Tatuaje con el nombre Sofía', 'VIH', 'Vestido azul y sandalias', 1, 1, 0, 5), 
(1005050625, 'Andrés', 'Pablo', 'Reyes', 'Martín', 1, 1.75, 68, 2, 35, 2, 1, 3, 'Piercing', 'Ninguna', 'Sudadera gris y jeans', 1, 1, 1, 5), 
(1005050626, 'Fernando', 'Daniel', 'Pérez', 'García', 1, 1.82, 80, 1, 28, 3, 1, 4, 'Pierna derecha más larga causada por Polio', 'Ninguna', 'Camisa de cuadros y pantalones oscuros', 0, 0, 0, 6), 
(1005050627, 'Carla', 'Lucía', 'Ríos', 'Hernández', 2, 1.60, 50, 3, 24, 2, 1, NULL, NULL, 'Asma', 'Top y falda negra', 1, 1, 1, 5), 
(1005050628, 'Javier', 'Alberto', 'Salas', 'Cruz', 1, 1.78, 70, 6, 29, 1, 2, 5, 'Prótesis de pierna', 'Diabetes', 'Chaqueta de cuero y botas', 0, 1, 1, 4), 
(1005050629, 'Laura', 'Estefanía', 'Cáceres', 'Reyes', 2, 1.68, 23, 2, 31, 2, 1, NULL, NULL, 'Embarazada', 'Blusa de flores y jeans', 1, 0, 1, 5), 
(1005050630, 'Miguel', 'Ángel', 'Luna', 'Maldonado', 1, 1.85, 85, 5, 23, 1, 1, 2, 'Cicatriz en el pecho', 'Alzheimer', 'Camisa blanca y pantalón azul', 1, 1, 0, 5), 
(1005050631, 'Sara', 'Victoria', 'Martínez', 'Soto', 2, 1.72, 65, 3, 26, 2, 1, NULL , NULL, 'Ninguna', 'Vestido amarillo y sandalias', 1, 1, 1, 5), 
(1005050632, 'Pablo', 'Nicolás', 'Valdés', 'Fuentes', 1, 1.77, 78, 6, 34, 1, 1, NULL, NULL, 'Ninguna', 'Sudadera negra y pantalones deportivos', 1, 1, 1, 6), 
(1005050633, 'Valentina', 'Andrea', 'Cordero', 'Nieves', 2, 1.62, 54, 4, 21, 3, 1, NULL, NULL, 'Anemia', 'Camisa de rayas y pantalones cortos', 1, 0, 1, 5), 
(1005050634, 'Diego', 'Armando', 'Cruz', 'Salinas', 1, 1.79, 82, 5, 33, 1, 1, 2, 'Cicatriz en el rostro', 'Párkinson', 'Chaqueta y botas de trabajo', 1, 1, 1, 5), 
(1005050635, 'Fernanda', 'Jazmín', 'Rivas', 'Galindo', 2, 1.66, 58, 3, 25, 2, 1, NULL, NULL, 'Pérdida de la visión', 'Blusa gris y falda roja', 1, 0, 1, 5), 
(1005050636, 'Cristian', 'Eduardo', 'Ortega', 'Núñez', 1, 1.81, 76, 6, 36, 1, 1, NULL, NULL, 'Ninguna', 'Camisa de rayas y pantalones caqui', 1, 1, 0, 5), 
(1005050637, 'Gabriela', 'Soledad', 'Vega', 'Salazar', 2, 1.64, 52, 2, 32, 2, 1, 1, 'Tatuaje de flores en el brazo derecho', 'Ninguna', 'Top negro y jeans', 1, 0, 1, 5), 
(1005050632, 'Carlos', 'Andrés', 'Mendoza', 'Sánchez', 1, 1.78, 82, 3, 30, 1, 2, 1, 'Tatuaje en el brazo', 'Ninguna', 'Camiseta azul y jeans', 1, 1, 1, 5), 
(1005050643, 'Lucía', 'María', 'Gómez', 'Pérez', 2, 1.65, 54, 4, 27, 2, 3, NULL, NULL, 'Ninguna', 'Vestido de flores', 1, 1, 0, 5), 
(1005050654, 'Andrés', 'Felipe', 'Martínez', 'López', 1, 1.80, 90, 6, 33, 2, 1, 1, 'Cicatriz en la frente', 'Asma', 'Pantalones cortos y camiseta blanca', 1, 0, 1, 5), 
(1005050665, 'Ana', 'Cristina', 'Torres', 'Rivas', 2, 1.70, 60, 3, 22, 1, 4, NULL, NULL, 'Ninguna', 'Sudadera negra y leggings', 0, 1, 1, 5), 
(1005050676, 'José', 'Luis', 'Ramírez', 'Vega', 1, 1.75, 78, 2, 29, 2, 2, NULL, NULL, 'Diabetes', 'Camisa blanca y chaqueta', 1, 1, 0, 5);

-- Cadáveres
INSERT INTO Cadaveres(id_sexo, id_etnia, id_grupo_etario, altura_estimada, peso_estimado, fecha_encuentro, id_municipio, ropa, id_distintivo_corporal, descripcion_distintivo, adn, dental, dactilar, id_grupo_sanguineo)
VALUES(2, 4, 2, 1.72, 98, '2019-12-02', 3, 'camisa negra a rayas rojas', NULL, NULL, 0, 1, 2, 3), 
(1, 4, 2, 1.80, 85, '2019-03-15', 2, 'chaqueta azul y pantalones oscuros', NULL, NULL, 1, 1, 0, 5), 
(2, 3, 3, 1.65, 60, '2020-05-20', 4, 'blusa blanca y falda negra', NULL, NULL, 0, 1, 1, 5), 
(1, 6, 4, 1.75, 75, '2018-07-10', 1, 'camiseta verde y jeans', NULL, NULL, 1, 1, 1, 5), 
(2, 2, 1, 1.55, 50, '2021-11-30', 5, 'vestido rosa', NULL, NULL, 0, 0, 1, 5), 
(1, 7, 3, 1.70, 78, '2022-01-05', 3, NULL, NULL, NULL, 1, 1, 0, 6), 
(2, 4, 5, 1.68, 65, '2023-02-12', 1, 'abrigo gris y bufanda', NULL, NULL, 1, 0, 1, 5), 
(1, 1, 2, 1.85, 90, '2020-04-09', 2, NULL, NULL, NULL, 0, 1, 0, 3), 
(2, 3, 6, 1.60, 58, '2017-06-17', 4, 'pantalones cortos y camiseta', NULL, NULL, 1, 1, 1, 5), 
(3, 2, 4, 1.77, 72, '2019-08-22', 5, NULL, NULL, NULL, 1, 0, 1, 5), 
(1, 4, 1, 1.82, 85, '2021-09-14', 3, 'chaqueta de cuero y camiseta blanca', NULL, NULL, 0, 1, 0, 5), 
(2, 6, 2, 1.67, 63, '2022-10-29', 1, NULL, NULL, NULL, 1, 1, 1, 4), 
(1, 5, 5, 1.76, 80, '2020-12-11', 2, 'pantalones oscuros y camiseta amarilla', NULL, NULL, 1, 1, 0, 5), 
(2, 7, 3, 1.62, 55, '2018-03-08', 3, NULL, NULL, NULL, 0, 0, 1, 6), 
(1, 1, 6, 1.74, 77, '2019-01-23', 4, NULL, NULL, NULL, 1, 1, 1, 5), 
(2, 3, 5, 1.70, 62, '2022-02-15', 1, NULL, NULL, NULL, 0, 1, 0, 5), 
(1, 4, 2, 1.80, 90, '2020-04-27', 2, NULL, NULL, NULL, 1, 0, 1, 5), 
(1, 6, 3, 1.73, 85, '2023-05-14', 1, 'sudadera negra', NULL, NULL, 1, 1, 0, 5), 
(2, 2, 5, 1.60, 54, '2023-06-01', 2, NULL, NULL, NULL, 0, 1, 1, 6), 
(1, 3, 1, 1.90, 95, '2023-07-20', 3, 'camiseta roja y pantalones cortos', NULL, NULL, 1, 0, 1, 5);

-- Expediente
INSERT INTO Expediente(id_persona_desaparecida, fecha_desaparicion, id_municipio_desaparicion, id_agente, fecha_creacion_caso, vehiculo_asociado, circunstancias, Activo)
VALUES(1, '1979-09-30', 1, 1, '1980-02-02', 'Corvette 1979', 'Desapareció junto a su carro', 0), 
(2, '1965-05-10', 3, 1, '1965-06-15', 'Ford Mustang 1965', 'Último avistamiento en un café', 1), 
(3, '1982-03-20', 5, 2, '1982-04-05', NULL, 'Desapareció durante un viaje de camping', 1), 
(4, '1978-11-15', 2, 1, '1979-01-10', 'Chevrolet Impala 1978', 'Visto por última vez en una fiesta', 0), 
(5, '1990-07-25', 8, 3, '1990-08-30', NULL, 'No regresó de la escuela', 1), 
(6, '1955-12-12', 1, 4, '1956-01-15', NULL, 'Desapareció en una excursión', 1), 
(7, '1985-04-01', 4, 2, '1985-05-20', 'Toyota Corolla 1985', 'Visto por última vez en el centro comercial', 1), 
(8, '1972-09-14', 6, 1, '1972-10-01', NULL, 'Última vez en una reunión familiar', 0), 
(9, '1968-08-22', 7, 3, '1968-09-10', 'Volkswagen Beetle 1968', 'Visto cerca del lago', 1), 
(10, '1959-01-03', 2, 4, '1959-02-15', NULL, 'Desapareció tras un viaje en tren', 0), 
(11, '1988-06-18', 5, 2, '1988-07-22', 'Honda Civic 1988', 'Último avistamiento en la playa', 1), 
(12, '1974-10-30', 3, 1, '1974-11-25', NULL, 'Desapareció en el bosque', 1), 
(13, '1963-04-12', 8, 3, '1963-05-15', 'Dodge Charger 1963', 'Visto en una gasolinera', 1), 
(14, '1992-11-05', 10, 2, '1992-12-20', NULL, 'No regresó de una fiesta', 1), 
(15, '1976-03-17', 12, 1, '1976-04-30', 'BMW 1976', 'Último avistamiento en la estación de tren', 0), 
(16, '1951-07-08', 14, 4, '1951-08-12', NULL, 'Desapareció en una feria', 1), 
(17, '1981-02-19', 11, 2, '1981-03-22', 'Nissan Altima 1981', 'Última vez visto en una carretera', 1), 
(18, '1995-09-09', 15, 3, '1995-10-14', NULL, 'Visto por última vez en una discoteca', 1), 
(19, '1987-03-14', 9, 4, '1987-04-28', NULL, 'Desapareció en un viaje de trabajo', 0), 
(20, '1975-08-05', 13, 1, '1975-09-10', 'Chrysler 1975', 'Último avistamiento en el parque', 1);

-- Autopsia
INSERT INTO Autopsia(id_medico_forense, id_cadaver, id_morgue, id_causa_muerte, id_condicion_restos, circunstancias)
VALUES(1, 1, 2, 1, 1, 'Cadáver encontrado en un bosque'), 
(2, 2, 3, 1, 2, 'Cadáver encontrado en un río'), 
(3, 3, 1, 2, 3, 'Cadáver hallado en un edificio abandonado'), 
(4, 4, 2, 3, 1, 'Cadáver descubierto en un parque'), 
(5, 5, 4, 4, 2, 'Cadáver encontrado en un contenedor'), 
(1, 6, 3, 5, 3, 'Cadáver hallado en un campo'), 
(2, 7, 5, 1, 4, 'Cadáver encontrado en la playa'), 
(3, 8, 2, 2, 5, 'Cadáver hallado en una carretera rural'), 
(4, 9, 1, 3, 6, 'Cadáver descubierto en una habitación'), 
(5, 10, 4, 4, 1, 'Cadáver encontrado en un pozo'), 
(1, 11, 3, 5, 2, 'Cadáver hallado en un bosque'), 
(2, 12, 5, 1, 3, 'Cadáver encontrado en un callejón'), 
(3, 13, 1, 2, 4, 'Cadáver hallado en una estación de tren'), 
(4, 14, 2, 3, 5, 'Cadáver descubierto en un edificio en ruinas'), 
(5, 15, 3, 4, 6, 'Cadáver encontrado en una zona industrial'), 
(1, 16, 4, 5, 1, 'Cadáver hallado en un camino rural'), 
(2, 17, 5, 1, 2, 'Cadáver encontrado en una cueva'), 
(3, 18, 2, 2, 3, 'Cadáver hallado en un lago'), 
(4, 19, 1, 3, 4, 'Cadáver descubierto en una casa deshabitada'), 
(5, 20, 3, 4, 5, 'Cadáver encontrado en un almacén');
