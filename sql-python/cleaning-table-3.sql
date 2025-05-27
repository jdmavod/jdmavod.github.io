SELECT * FROM datos_q6; -- segunda tabla

SELECT id_encuestado, q6_salario FROM datos_q6 WHERE q6_salario IS NULL; -- 7 registros con valores NULL
UPDATE datos_q6 SET q6_salario = 0 WHERE q6_salario IS NULL; -- 81 registros finales con valor 0

SELECT id_encuestado, q6_worklife FROM datos_q6 WHERE q6_worklife IS NULL; -- 10 registros con valores NULL
UPDATE datos_q6 SET q6_worklife = 0 WHERE q6_worklife IS NULL; -- 38 registros finales con valor 0

SELECT id_encuestado, q6_coworkers FROM datos_q6 WHERE q6_coworkers IS NULL; -- 11 registros con valores NULL
UPDATE datos_q6 SET q6_coworkers = 0 WHERE q6_coworkers IS NULL; -- 37 registros finales con valor 0

SELECT id_encuestado, q6_gestion FROM datos_q6 WHERE q6_gestion IS NULL; -- 12 registros con valores NULL
UPDATE datos_q6 SET q6_gestion = 0 WHERE q6_gestion IS NULL;-- 51 registros finales con valor 0

SELECT id_encuestado, q6_ascenso FROM datos_q6 WHERE q6_ascenso IS NULL; -- 13 registros con valores NULL
UPDATE datos_q6 SET q6_ascenso = 0 WHERE q6_ascenso IS NULL;-- 82 registros finales con valor 0

SELECT id_encuestado, q6_aprendizaje FROM datos_q6 WHERE q6_aprendizaje IS NULL; -- 630(TODOS) REGISTROS NULOS (REVISAR ESTO)
SELECT * FROM datos_iniciales; -- La tabla original contiene los valores actuales de la columna q6_aprendizaje
SELECT -- Verificar los registros con un JOIN
    tinic.id_encuestado,
    tinic.q6_aprendizaje AS aprendizaje_I, -- Aprendizaje en datos_iniciales
    tdes.q6_aprendizaje AS aprendizaje_Q6 -- Aprendizaje en datos_q6
FROM
    datos_iniciales tinic -- Nombre de la tabla fuente
INNER JOIN
    datos_q6 tdes -- Nombre de la tabla destino
    ON tinic.id_encuestado = tdes.id_encuestado -- La condición de cruce por ID

UPDATE tinic -- Ejecutar el UPDATE con los datos verificados
SET
    tinic.q6_aprendizaje = tdes.q6_aprendizaje -- Copia el valor de q6_aprendizaje desde la tabla inicial a la tabla destino
FROM
    datos_iniciales tdes -- Nombre de la tabla inicial
INNER JOIN
    datos_q6 tinic -- Nombre de la tabla destino
    ON tinic.id_encuestado = tdes.id_encuestado; -- Asegura que solo se actualicen filas con el mismo id_encuestado
-- Valores actualizados (corregida la columna con datos NULL)
SELECT id_encuestado, q6_aprendizaje FROM datos_q6 WHERE q6_aprendizaje IS NULL; -- Verificando nuevamente los registros NULL, solo se encuentran 5
UPDATE datos_q6 SET q6_aprendizaje = 0 WHERE q6_aprendizaje IS NULL;-- 46 registros finales con valor 0

-- Validar si aun hay valores NULL en alguna columna menos id_encuestado que no permite NULL
SELECT q6_aprendizaje, 
q6_ascenso, 
q6_coworkers, 
q6_gestion, 
q6_salario, 
q6_worklife 
FROM 
datos_q6
WHERE 
q6_aprendizaje IS NULL 
OR q6_ascenso IS NULL 
OR q6_coworkers IS NULL 
OR q6_gestion IS NULL 
OR q6_salario IS NULL 
OR q6_worklife IS NULL;
-- Validado

-------------------------------------
--- LIMPIEZA COMPLETADA datos_q6 ----
-------------------------------------