-- INSERT de valores desde datos_iniciales a datos_personales
INSERT INTO datos_personales (id_encuestado, genero, edad, pais, educacion, etnia)
SELECT id_encuestado, genero, edad, pais, educacion, etnia 
FROM datos_iniciales;

-- INSERT de valores desde datos_iniciales a datos_trabajo
-- ERROR en INSERT: la columna salario (int) en la tabla destino es de un tipo diferente en la tabla origen (varchar)
-- PENDIENTE: 1. Cambiar salario en datos_iniciales para que sea del tipo INT en vez del tipo VARCHAR
-- 2. Se uso PYTHON para convertir salario VARCHAR a salario INT, .csv generado con SSMS
-- 3. El codigo en PYTHON se programo para tomar el valor mas alto del campo salario, es decir, 
-- "0-40k" (Se tomo 40 y se multiplico por 1000, registrando asi 40000, dato del tipo INT)
-- 4. Por error al momento de importar los nuevos datos, se creo una tabla nueva con los datos de tipo INT, se copio todo en el INSERT menos los salarios
INSERT INTO datos_trabajo (id_encuestado, fecha_hecha, hora_hecha, duracion, cargo, cambio_carrera, industria, lenguaje, dificultad, modalidad)
SELECT id_encuestado, fecha_hecha, hora_hecha, duracion, cargo, cambio_carrera, industria, lenguaje, dificultad, modalidad
FROM datos_iniciales;
-- 5. Se hizo un JOIN para confirmar y un UPDATE posterior para insertar los datos finales en la columna 'salario'
-- SELECT con un JOIN para verificar primero lo que se va a actualizar con el UPDATE
SELECT
    TDO.id_encuestado,
    TDO.salario AS TDestino, -- Salario actual en la tabla que se quiere actualizar
    TNI.salario AS TImportada -- Salario nuevo que se copiará al destino
FROM
    datos_trabajo TDO -- Nombre de la tabla final
INNER JOIN
    salarios_nuevo TNI -- Nombre de la tabla creada con SSMS
    ON TDO.id_encuestado = TNI.id_encuestado -- La condición de cruce por ID
-- Si el SELECT anterior muestra los datos correctos, ejecutar el UPDATE.
UPDATE TDO
SET
    TDO.salario = TNI.salario -- Copia el valor de salario desde la tabla nueva a la original
FROM
    datos_trabajo TDO -- Nombre de la tabla final
INNER JOIN
    salarios_nuevo TNI -- Nombre de la tabla creada por SSMS
    ON TDO.id_encuestado = TNI.id_encuestado; -- Asegura que solo se actualicen filas con el mismo id_encuestado

-- INSERT de valores desde datos_iniciales a datos_q6
INSERT INTO datos_q6 (id_encuestado, q6_salario, q6_worklife, q6_coworkers, q6_gestion, q6_ascenso)
SELECT id_encuestado, q6_salario, q6_worklife, q6_coworkers, q6_gestion, q6_ascenso
FROM datos_iniciales;