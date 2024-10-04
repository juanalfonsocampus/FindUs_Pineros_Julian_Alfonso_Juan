-- 1. Obtener los nombres de todas las personas desaparecidas
SELECT nombre FROM Personas_Desaparecidas;

-- 2. Contar cuántas personas desaparecidas hay
SELECT COUNT(*) AS total_personas_desaparecidas FROM Personas_Desaparecidas;

-- 3. Obtener los municipios que pertenecen al departamento 'Santander'
SELECT municipio FROM Municipio WHERE id_departamento = 1;

-- 4. Obtener las descripciones de los distintivos corporales de las personas desaparecidas
SELECT descripcion_distintivo FROM Personas_Desaparecidas WHERE descripcion_distintivo IS NOT NULL;

-- 5. Obtener los reportes iniciales hechos por familiares
SELECT nombre_reportante FROM Reporte_Inicial WHERE id_parentesco = 1;

-- 6. Contar las autopsias realizadas en la morgue 'Medicina Legal Norte'
SELECT COUNT(*) FROM Autopsia WHERE id_morgue = 1;

-- 7. Obtener todos los cadáveres con Cara Reconocible
SELECT c.* 
FROM Cadaveres c
JOIN Autopsia a ON c.id = a.id_cadaver 
WHERE a.id_condicion_restos = 1
LIMIT 0, 1000;

-- 8. Obtener los nombres de los médicos forenses
SELECT nombre FROM Medico_Forense;

-- 9. Contar cuántas personas desaparecidas tienen cada tipo de grupo sanguíneo
SELECT id_grupo_sanguineo, COUNT(*) AS cantidad FROM Personas_Desaparecidas GROUP BY id_grupo_sanguineo ORDER BY cantidad DESC;

-- 10. Obtener personas desaparecidas que tienen un segundo nombre
SELECT nombre, segundo_nombre FROM Personas_Desaparecidas WHERE segundo_nombre IS NOT NULL;

-- 11. Obtener los cadáveres encontrados en el municipio 'Bucaramanga'
SELECT * FROM Cadaveres WHERE id_municipio = 1;

-- 12. Obtener los nombres de las morgues
SELECT nombre FROM Morgue;

-- 13. Contar cuántos reportes iniciales se han hecho por cada tipo de parentesco
SELECT id_parentesco, COUNT(*) AS cantidad_reportes FROM Reporte_Inicial GROUP BY id_parentesco;

-- 14. Obtener las personas desaparecidas que tenían tatuajes
SELECT nombre FROM Personas_Desaparecidas WHERE id_distintivo_corporal = 1;

-- 15. Obtener los agentes que pertenecen a la agencia investigadora 'FBI'
SELECT nombre FROM Agente WHERE id_agencia = 1;

-- 16. Obtener los expedientes que están activos
SELECT * FROM Expediente WHERE Activo = 1;

-- 17. Obtener las personas desaparecidas que tenían más de 30 años
SELECT nombre FROM Personas_Desaparecidas WHERE edad_desaparecido > 30;

-- 18. Obtener la causa de muerte más común en los cadáveres
SELECT id_causa_muerte, COUNT(*) AS cantidad FROM Autopsia GROUP BY id_causa_muerte ORDER BY cantidad DESC LIMIT 1;

-- 19. Listar los tipos de etnia disponibles
SELECT grupo_etnico FROM Etnia;

-- 20. Obtener todas las causas de muerte registradas
SELECT causa FROM Causa_Muerte;

-- 21. Calcular el promedio de peso de las personas desaparecidas
SELECT AVG(peso) AS promedio_peso FROM Personas_Desaparecidas;

-- 22. Contar cuántos cadáveres fueron encontrados en cada municipio
SELECT id_municipio, COUNT(*) AS total_cadaveres FROM Cadaveres GROUP BY id_municipio;

-- 23. Obtener personas desaparecidas con condiciones médicas específicas
SELECT nombre, condiciones_medicas FROM Personas_Desaparecidas WHERE condiciones_medicas IS NOT NULL;

-- 24. Obtener los médicos forenses que han realizado más de 3 autopsias
SELECT id_medico_forense, COUNT(*) AS cantidad_autopsias FROM Autopsia GROUP BY id_medico_forense HAVING COUNT(*) > 3;

-- 25. Obtener las personas desaparecidas con grupo sanguíneo 'O+'
SELECT nombre FROM Personas_Desaparecidas WHERE id_grupo_sanguineo = (SELECT id FROM Grupo_Sanguineo WHERE tipo = 'O+');

-- 26. Obtener los nombres de los agentes y sus teléfonos
SELECT nombre, telefono FROM Agente;

-- 27. Contar cuántos cadáveres tienen muestras de ADN
SELECT COUNT(*) AS total_adn FROM Cadaveres WHERE adn = 1;

-- 28. Contar cuántos cadáveres pertenecen a cada grupo etario
SELECT id_grupo_etario, COUNT(*) AS cantidad FROM Cadaveres GROUP BY id_grupo_etario;

-- 29. Obtener personas desaparecidas sin huellas dactilares registradas
SELECT nombre FROM Personas_Desaparecidas WHERE dactilar = 0;

-- 30. Obtener la desaparición más antigua registrada
SELECT MIN(fecha_desaparicion) AS desaparicion_mas_antigua FROM Expediente;

-- 31. Obtener los cadáveres con peso estimado mayor a 70 kg
SELECT * FROM Cadaveres WHERE peso_estimado > 70;

-- 32. Contar cuántas personas desaparecidas tenían tatuajes
SELECT COUNT(*) AS total_con_tatuajes FROM Personas_Desaparecidas WHERE id_distintivo_corporal = 1;

-- 33. Obtener las personas desaparecidas con estatura menor a 1.65 metros
SELECT nombre, apellido FROM Personas_Desaparecidas WHERE altura < 1.65;

-- 34. Contar cuántos cadáveres tiene asignada cada morgue
SELECT m.nombre, COUNT(c.id) AS total_cadaveres 
FROM Morgue m
LEFT JOIN Autopsia a ON m.id = a.id_morgue
LEFT JOIN Cadaveres c ON a.id_cadaver = c.id
GROUP BY m.nombre;

-- 35. Obtener expedientes con agentes de la agencia 'Interpol'
SELECT e.* FROM Expediente e 
JOIN Agente a ON e.id_agente = a.id
WHERE a.id_agencia = (SELECT id FROM Agencia_Investigadora WHERE nombre_agencia = 'Interpol');

-- 36. Obtener las personas desaparecidas con grupo sanguíneo 'A-'
SELECT nombre FROM Personas_Desaparecidas WHERE id_grupo_sanguineo = (SELECT id FROM Grupo_Sanguineo WHERE tipo = 'A-');

-- 37. Contar cuántos médicos forenses han realizado al menos una autopsia
SELECT COUNT(DISTINCT id_medico_forense) AS total_medicos FROM Autopsia;

-- 38. Contar cuántas personas desaparecidas tienen cada tipo de grupo sanguíneo
SELECT id_grupo_sanguineo, COUNT(*) AS cantidad FROM Personas_Desaparecidas GROUP BY id_grupo_sanguineo;

-- 39. Obtener las personas desaparecidas que tenían 'diabetes'
SELECT nombre FROM Personas_Desaparecidas WHERE condiciones_medicas LIKE '%diabetes%';

-- 40. Obtener los municipios donde se han encontrado más de 3 cadáveres
SELECT id_municipio, COUNT(*) AS total_cadaveres 
FROM Cadaveres 
GROUP BY id_municipio 
HAVING COUNT(*) > 3;

-- 41. Obtener el promedio de altura de las personas desaparecidas por sexo
SELECT s.sexo, AVG(pd.altura) AS promedio_altura 
FROM Personas_Desaparecidas pd
JOIN Sexo s ON pd.id_sexo = s.id
GROUP BY s.sexo;

-- 42. Contar cuántos cadáveres corresponden a cada causa de muerte
SELECT cm.causa, COUNT(a.id_cadaver) AS cantidad_cadaveres
FROM Causa_Muerte cm
LEFT JOIN Autopsia a ON cm.id = a.id_causa_muerte
GROUP BY cm.causa;

-- 43. Contar cuántos cadáveres fueron encontrados por año
SELECT YEAR(fecha_encuentro) AS año, COUNT(*) AS total_cadaveres 
FROM Cadaveres 
GROUP BY YEAR(fecha_encuentro);

-- 44. Contar el número de reportes iniciales realizados por mes
SELECT MONTH(fecha_creacion_caso) AS mes, COUNT(*) AS total_reportes 
FROM Expediente 
GROUP BY MONTH(fecha_creacion_caso);

-- 45. Obtener los cadáveres que fueron encontrados sin ropa
SELECT Cadaveres.id,Cadaveres.fecha_encuentro from Cadaveres
WHERE ropa is NULL