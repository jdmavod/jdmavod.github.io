SELECT * FROM datos_trabajo; -- tercera tabla

SELECT cargo, COUNT(cargo) AS cant_c FROM datos_trabajo GROUP BY cargo ORDER BY cant_c DESC; -- CARGOS (listo)
-- Se decidio practicar UPDATE, LIKE, HAVING para ir leyendo los cargos e ir actualizando acorde a los resultados
SELECT * FROM datos_trabajo WHERE cargo LIKE '%intern%'
UPDATE datos_trabajo SET cargo = 'Other (Please Specify):Sales & Marketing Analyst' WHERE cargo = 'Other (Please Specify):Sales & marketing'

SELECT industria, COUNT(industria) AS cant_i FROM datos_trabajo GROUP BY industria ORDER BY cant_i DESC; -- INDUSTRIAS (listo)
-- Gran cantidad de variacion en la industria ya que se puede aplicar en muchos temas, se cambio por Other/Student/Not working
WITH ind_cte AS (
	SELECT 
		id_encuestado, industria
	FROM 
		datos_trabajo
	WHERE 
		industria LIKE 'Other%'
)
UPDATE datos_trabajo
SET
	industria = 'Other/Student/Not working'
WHERE
	id_encuestado IN (SELECT id_encuestado FROM ind_cte)

SELECT lenguaje, COUNT(lenguaje) AS cant_l FROM datos_trabajo GROUP BY lenguaje ORDER BY cant_l DESC; -- LENGUAJE (listo)
-- La mayoria de las opciones que comenzaban por 'Other:' se referian a que no usaban ningun lenguaje o no lo requerian 
WITH len_cte AS (
	SELECT 
		id_encuestado, lenguaje
	FROM 
		datos_trabajo
	WHERE 
		lenguaje = '%other%'
)
UPDATE datos_trabajo
SET
	lenguaje = 'Other/None/Dont require'
WHERE
	id_encuestado IN (SELECT id_encuestado FROM len_cte)

SELECT modalidad, COUNT(modalidad) AS cant_m FROM datos_trabajo GROUP BY modalidad ORDER BY cant_m DESC; -- MODALIDAD (listo)
-- Se observo que predominaba las mismas primeras 4 opciones en aquellos encuestados con seleccion Other:
WITH mod_cte AS (
    SELECT
        id_encuestado, modalidad
    FROM
        datos_trabajo
    WHERE
        modalidad LIKE 'Other%'
)
UPDATE datos_trabajo
SET
    modalidad = 'All of the above'
WHERE
    id_encuestado IN (SELECT id_encuestado FROM mod_cte);

------------------------------------------
--- LIMPIEZA COMPLETADA datos_trabajo ----
------------------------------------------