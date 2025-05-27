# salario varchar a int con csv
import pandas as pd
import math # Para manejar posibles valores NaN (Not a Number)

# --- Configuración ---
archivo_entrada = r'C:\Users\...\...\...\salarios_conve.csv' # Nombre del archivo CSV exportado de SQL
archivo_salida = r'C:\Users\...\...\...\salarios_nuevo.csv' # Nombre para el nuevo CSV con datos INT
columna_salario_origen = 'salario'      # Nombre EXACTO de la columna VARCHAR en el CSV
columna_id = 'id_encuestado'                       # Nombre de la columna ID (o clave única) si la incluiste

# --- Función de Conversión ---
def convertir_salario_a_int(salario_texto):
    """
    Convierte un texto de salario (ej: '0-40k', '50k') al valor INT superior (ej: 40000, 50000).
    """
    # Manejar valores nulos o no texto
    if salario_texto is None or not isinstance(salario_texto, str):
        return None # O podrías devolver 0 si prefieres

    # Limpiar texto: quitar espacios y pasar a minúsculas
    salario_limpio = salario_texto.strip().lower()

    # Si está vacío después de limpiar
    if not salario_limpio:
        return None # O 0

    try:
        valor_numerico = 0
        # Buscar el formato 'X-Yk' -> tomar Y
        if '-' in salario_limpio and 'k' in salario_limpio:
            partes = salario_limpio.split('-')
            valor_k = partes[-1].replace('k', '').strip() # Tomar la última parte y quitar 'k'
            valor_numerico = int(float(valor_k) * 1000)
        # Buscar el formato 'Yk'
        elif 'k' in salario_limpio:
            valor_k = salario_limpio.replace('k', '').strip()
            valor_numerico = int(float(valor_k) * 1000)
        # Intentar convertir directamente si es solo un número (sin 'k')
        else:
             # Podría ser un número directo, intentar convertir
             valor_numerico = int(salario_limpio)

        return valor_numerico

    except ValueError:
        # Si la conversión falla (formato inesperado)
        print(f"Advertencia: No se pudo convertir '{salario_texto}'. Se asignará None.")
        return None # O 0 si prefieres manejar errores como cero

# --- Procesamiento Principal ---
try:
    # 1. Leer el archivo CSV de origen
    df = pd.read_csv(archivo_entrada)
    print("--- Datos Originales (primeras filas) ---")
    print(df.head())

    # Asegurarse que la columna salario existe
    if columna_salario_origen not in df.columns:
        raise ValueError(f"Error: La columna '{columna_salario_origen}' no se encontró en el archivo CSV.")

    # 2. Aplicar la función de conversión para crear la nueva columna INT
    #    Se crea una nueva columna para mantener la original si se necesita revisar
    df['salario_int'] = df[columna_salario_origen].apply(convertir_salario_a_int)

    # Opcional: Convertir la nueva columna a tipo Int64 (que maneja nulos)
    df['salario_int'] = df['salario_int'].astype('Int64')

    print("\n--- Datos Transformados (primeras filas) ---")
    # Mostrar columnas relevantes: ID (si existe) y las de salario
    columnas_a_mostrar = [col for col in [columna_id, columna_salario_origen, 'salario_int'] if col in df.columns]
    print(df[columnas_a_mostrar].head())

    # 3. Seleccionar las columnas para el archivo final
    #    Necesitas la nueva columna INT y el ID (si existe) para la importación
    columnas_finales = ['salario_int']
    if columna_id in df.columns:
         columnas_finales.insert(0, columna_id) # Poner ID primero
    else:
        print(f"Advertencia: Columna ID '{columna_id}' no encontrada. El CSV de salida solo tendrá 'salario_int'.")

    df_destino = df[columnas_finales]

    # Renombrar la columna 'salario_int' a 'salario' para la tabla destino
    df_destino = df_destino.rename(columns={'salario_int': 'salario'})

    # 4. Guardar el DataFrame resultante en un nuevo archivo CSV
    df_destino.to_csv(archivo_salida, index=False, encoding='utf-8') # index=False es importante

    print(f"\n¡Proceso completado! Los datos transformados se han guardado en '{archivo_salida}'.")
    print("Columnas guardadas:", list(df_destino.columns))

except FileNotFoundError:
    print(f"Error: El archivo de entrada '{archivo_entrada}' no fue encontrado.")
    print("Asegúrate de que el archivo CSV exportado esté en la misma carpeta que el script o proporciona la ruta completa.")
except ValueError as ve:
    print(ve)
except Exception as e:
    print(f"Ocurrió un error inesperado durante el procesamiento: {e}")