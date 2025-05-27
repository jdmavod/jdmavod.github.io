-------------------------------
-- LIMPIEZA datos_personales --
-------------------------------

SELECT * FROM datos_personales; -- primera tabla

SELECT id_encuestado, educacion FROM datos_personales WHERE educacion IS NULL; -- UNICA COLUMNA en la tabla con datos NULL
UPDATE datos_personales SET educacion = 'None' WHERE educacion IS NULL; -- UPDATE para cambiar el NULL a NONE

SELECT * FROM datos_personales 
WHERE id_encuestado IS NULL
OR genero IS NULL 
OR edad IS NULL 
OR pais IS NULL 
OR educacion IS NULL 
OR etnia IS NULL; -- Todos los campos completos

SELECT genero, COUNT(genero) AS cant_g FROM datos_personales GROUP BY genero ORDER BY cant_g DESC; -- 468 Hombres / 162 Mujeres = Total de encuestados 630 personas
SELECT edad, COUNT(edad) AS edades FROM datos_personales GROUP BY edad ORDER BY edad ASC;
SELECT pais, COUNT(pais) AS paises FROM datos_personales GROUP BY pais ORDER BY paises DESC;
SELECT educacion, COUNT(educacion) AS edus FROM datos_personales GROUP BY educacion ORDER BY edus;
SELECT etnia, COUNT(etnia) AS etni FROM datos_personales GROUP BY etnia ORDER BY etni DESC;

-- Se crea un CTE para agrupar por rangos las edades en la tabla para mejor visualizacion
WITH r_edades AS (
    SELECT
		-- Tomar el valor de edad y asignarlo a un rango de 10 numeros calculando el valor minimo del valor inicial
        (edad / 10) * 10 AS r_inferior,
		 -- Usar CASE para crear etiquetas de rango <20 años y >90 años
        CASE
            WHEN edad < 20 THEN 'Pollitos' -- Edades menores de 20
            WHEN edad >= 90 THEN 'Dinosaurios' -- Edades de 90 o mas
            ELSE -- Para el resto de edades, crea el rango de 10 años
        CAST((edad / 10) * 10 AS VARCHAR(10)) + '-' + CAST(((edad / 10) * 10) + 9 AS VARCHAR(10))
		END AS rango_edades
    FROM
        datos_personales
)
-- Consulta principal que usa el CTE
SELECT
    cte.rango_edades,          -- El rango de edad como texto
    COUNT(*) AS total_en_rango -- El conteo de personas en ese rango
FROM
    r_edades cte               -- Seleccion desde el CTE
GROUP BY
    cte.r_inferior,            -- Agrupa por el número inferior del rango
    cte.rango_edades           -- Agrupa por el texto del rango (para poder seleccionarlo)
ORDER BY
    cte.r_inferior ASC;        -- Ordena los resultados por el límite inferior hasta el superior

SELECT * FROM datos_personales WHERE edad < 20 or edad >= 90 ORDER BY 3 DESC; -- Confirmando los menores de 20 y los mayores a 90

SELECT pais, COUNT(pais) AS pers_pais
FROM datos_personales
GROUP BY pais
ORDER BY pers_pais DESC; -- 85 Paises registrados (71 registros luego de limpiiar)

-- ERRORES de tipografia encontrados:
-- Other: vaciosX, ghana > GhanaX, Niger? > NigeriaX, Fin > FinlandX, Ire & Irel > IrelandX, Brazik > BrasilX, Argentine > ArgentinaX, 
-- Austr > AustraliaX, Africa (Nigeria) > NigeriaX, Aisa (Asia?) > Japan?X, Kenua > KenyaX, Leba > PolandX, SG > SingaporeX,
-- Portugsl > PortugalX, Other (Please Specify):Republic democratic of Congo > Republic Democratic of CongoX,
-- TUNISIA > TunisiaX, Perú > PeruX, Sri lanka > Sri LankaX, uzb > UzbekistanX
-- UPDATE para los paises
SELECT pais FROM datos_personales WHERE pais LIKE '%Arab%';
SELECT pais FROM datos_personales WHERE pais = 'Planet Earth';
UPDATE datos_personales SET pais = 'Other (Please Specify):Somalia' WHERE pais = 'Other (Please Specify): Somalia';

-- JOIN para mostrar informacion de un encuestado
SELECT
    dp.*, -- Selecciona todas las columnas de datos_personales
    dt.* -- Selecciona todas las columnas de datos_trabajo
FROM
    datos_personales AS dp -- Alias para datos_personales
INNER JOIN
    datos_trabajo AS dt -- Alias para datos_trabajo
    ON dp.id_encuestado = dt.id_encuestado -- Condición de JOIN: ambas tablas deben tener el mismo ID de encuestado
WHERE
    dp.pais = 'Other (Please Specify):Venezuela' -- Filtro de la primera consulta aplicado a datos_personales
    AND dt.id_encuestado = '62a3d21ef3072dd8926314d1'; -- Filtro de la segunda consulta aplicado a datos_trabajo

--Revision de etnia
SELECT etnia, COUNT(etnia) AS cant_e
FROM datos_personales
GROUP BY etnia
ORDER BY cant_e DESC; -- 41 etnias registradas (5 filas finales)

-- Limpieza de columna etnia
SELECT * FROM datos_personales WHERE etnia = 'American Indian or Alaska Native' OR etnia = 'Native Hawaiian or other Pacific Islander';
SELECT * FROM datos_personales WHERE id_encuestado = '62a5a124cec54911e9cd29f5' OR id_encuestado = '62a749ebd8c00e9f541efa36';
SELECT * FROM datos_personales WHERE pais = 'United States' ORDER BY 6;
UPDATE datos_personales SET etnia = 'White or Caucasian' WHERE id_encuestado = '62a40c99575fa3a5ae89de4b';
WITH cte_act AS (
    SELECT
        id_encuestado
    FROM
        datos_personales
    WHERE
        pais = 'United States'
        AND etnia = 'American Indian or Alaska Native'
)
UPDATE datos_personales
SET
    etnia = 'White or Caucasian'
WHERE
    id_encuestado IN (SELECT id_encuestado FROM cte_act);

-- Demasiados errores/ inconsistencias en la columna etnia
-- Se decide reemplazar los registros que comienzan por Other (... >> Human
-- Esta columna al final del dia puede ser utilizada como informacion general solamente
-- Verificacion de datos con 'Other'
SELECT COUNT(*) FROM datos_personales WHERE etnia LIKE 'Other (Please specify):%'; -- (56 registros a ser modificados)
-- Ejecucion del UPDATE
UPDATE datos_personales SET etnia = 'Human' WHERE etnia LIKE 'Other (Please specify):%'; -- (7 registros finales actualizados)

------------------------------------------
-- LIMPIEZA COMPLETADA datos_personales --
------------------------------------------