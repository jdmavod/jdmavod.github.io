import pandas as pd
import os
import math
# Importamos para manejar tipos de pandas de forma más robusta
import pandas.api.types as pdtypes

def procesar_excel_a_txt(ruta_archivo_excel, ruta_archivo_txt, formato_salida, tipo_columnas_mapeo):
    """
    Lee un archivo Excel, formatea los datos para la sección VALUES de SQL,
    y los guarda en un archivo de texto.

    Args:
        ruta_archivo_excel (str): La ruta completa al archivo Excel de entrada.
        ruta_archivo_txt (str): La ruta completa donde se guardará el archivo de texto de salida.
        formato_salida (dict): Un diccionario que especifica el formato de salida.
                               Debe contener 'columnas' (lista de nombres exactos)
                               y 'separador' (str).
                               'incluir_encabezado' en este contexto debe ser False.
        tipo_columnas_mapeo (dict): Un diccionario que mapea nombres de columna
                                    a tipos esperados ('date', 'time', 'duration', 'numeric', 'text').
                                    Se usa para guiar el formato. Las columnas no listadas
                                    o marcadas como 'text' se tratan como texto (entre comillas),
                                    escapando comillas internas para SQL.
    """
    try:
        # Asegurarse de que el archivo Excel existe
        if not os.path.exists(ruta_archivo_excel):
            print(f"Error: El archivo Excel '{ruta_archivo_excel}' no fue encontrado.")
            return

        # Leer el archivo Excel en un DataFrame de pandas
        # Puedes especificar sheet_name si los datos no están en la primera hoja
        # pandas intentará inferir tipos, lo cual es útil para fechas/números.
        # Usar dtype=str para ciertas columnas si pandas infiere mal (opcional)
        df = pd.read_excel(ruta_archivo_excel)
        print(f"Archivo '{ruta_archivo_excel}' leído correctamente.")

        # --- Configuración de formato ---
        columnas_a_incluir = formato_salida.get('columnas', [])
        # Usamos el separador definido, pero agregamos un espacio para legibilidad SQL
        separador_interno = formato_salida.get('separador', ',') + ' ' # Ej: ', '
        # Para el formato SQL VALUES, no incluimos encabezado
        incluir_encabezado = False # Forzamos a False para este formato de salida

        if not columnas_a_incluir:
             print("Error: No se especificaron columnas para incluir en el formato de salida.")
             return

        # Validar y seleccionar columnas existentes en el orden especificado
        columnas_existentes = [col for col in columnas_a_incluir if col in df.columns]
        columnas_faltantes = [col for col in columnas_a_incluir if col not in df.columns]

        if columnas_faltantes:
             print(f"Advertencia: Las siguientes columnas especificadas para la salida no existen en el archivo Excel y serán omitidas: {columnas_faltantes}")

        if not columnas_existentes:
             print("Error: Ninguna de las columnas especificadas para la salida fue encontrada en el archivo Excel.")
             return

        # Seleccionar solo las columnas deseadas y en el orden especificado que SÍ existen
        df_salida = df[columnas_existentes].copy() # Usar .copy() para evitar advertencias

        # --- Lógica de Formateo y Escritura a Archivo TXT (Formato SQL VALUES) ---
        with open(ruta_archivo_txt, 'w', encoding='utf-8') as f:
            # No escribimos encabezado en este formato (incluir_encabezado es False)

            # Iterar sobre cada fila del DataFrame y agregar paréntesis y terminador
            # Usamos enumerate para saber si es la última fila
            total_rows = len(df_salida) # Calcular total de filas antes del loop

            for i, (index, row) in enumerate(df_salida.iterrows()):
                formatted_cells = [] # Lista para guardar los valores formateados de cada celda en la fila

                # Iterar sobre cada columna en el orden especificado
                for col in columnas_existentes:
                    value = row[col] # Obtener el valor de la celda
                    # Obtener el tipo esperado para esta columna del mapeo, por defecto es 'text'
                    expected_type = tipo_columnas_mapeo.get(col, 'text').lower() # Convertir a minúsculas
                    dtype = df_salida[col].dtype # Obtener el tipo de dato de pandas de la columna

                    # 1. Manejar valores vacíos (NaN, None, etc.) primero
                    if pd.isna(value):
                        formatted_cells.append('NULL')
                    else:
                        # 2. Formatear según el tipo de dato esperado o inferido por pandas
                        formatted_value = str(value) # Convertir a string por defecto

                        # --- Formateo de Fechas ---
                        # Priorizamos el tipo especificado en el mapeo, luego inferimos de dtype
                        if expected_type == 'date' or pdtypes.is_datetime64_any_dtype(dtype):
                            try:
                                # Asegurarnos de que es un objeto datetime antes de formatear
                                if not isinstance(value, pd.Timestamp):
                                    # Intentar convertir si es necesario, si falla -> NaT (que es isna)
                                    value = pd.to_datetime(value, errors='coerce')
                                    if pd.isna(value): # Si la conversión falla, tratar como NULL
                                        formatted_cells.append('NULL')
                                        continue # Pasar a la siguiente celda
                                # Formatear como YYYY-MM-DD y encerrar en comillas simples
                                formatted_value = value.strftime('%Y-%m-%d')
                                formatted_cells.append(f"'{formatted_value}'")
                            except Exception as e:
                                # Si falla el formateo de fecha por alguna otra razón, tratar como texto
                                print(f"Advertencia (Fila {index}, Col '{col}'): No se pudo formatear la fecha '{value}': {e}. Tratando como texto.")
                                # Tratar como texto: convertir a string, escapar comillas internas y citar
                                if isinstance(value, str):
                                    escaped_value = value.replace("'", "''")
                                    formatted_cells.append(f"'{escaped_value}'")
                                else:
                                    formatted_cells.append(f"'{str(value)}'")


                        # --- Formateo de Horas/Duraciones ---
                        # Similar a fechas, priorizamos mapeo, luego inferimos dtype
                        elif expected_type in ['time', 'duration'] or pdtypes.is_timedelta64_dtype(dtype) or (pdtypes.is_datetime64_any_dtype(dtype) and expected_type not in ['date']):
                             try:
                                 # Intentar convertir a timedelta si no lo es, errores a NaT
                                 if not isinstance(value, pd.Timedelta) and not isinstance(value, pd.Timestamp):
                                     # Intentar convertir strings como 'HH:MM:SS' o números (segundos)
                                     # pd.to_timedelta es más robusto para strings y números
                                     value = pd.to_timedelta(str(value), errors='coerce')
                                     if pd.isna(value): # Si la conversión falla, tratar como texto/NULL
                                         # Si la conversión falla y el valor original NO era NaN, reportar
                                         if not pd.isna(row[col]): # Usar el valor original antes de intentar str()
                                            print(f"Advertencia (Fila {index}, Col '{col}'): No se pudo convertir a duración/tiempo '{row[col]}'. Tratando como texto.")
                                            # Tratar como texto: convertir a string, escapar comillas internas y citar
                                            if isinstance(row[col], str):
                                                escaped_value = row[col].replace("'", "''")
                                                formatted_cells.append(f"'{escaped_value}'")
                                            else:
                                                formatted_cells.append(f"'{str(row[col])}'")
                                         else: # Si el valor original era NaN, ya se manejó arriba, pero por seguridad
                                            formatted_cells.append('NULL') # Esto no debería pasar aquí si NaNs se manejan primero
                                         continue # Pasar a la siguiente celda

                                 # Ahora 'value' debería ser un Timedelta o Timestamp (si es de tipo datetime y no mapeado como date)
                                 if isinstance(value, pd.Timestamp):
                                     # Si es Timestamp pero mapeado como time/duration, extraer solo la hora
                                     formatted_value = value.strftime('%H:%M:%S')
                                 elif isinstance(value, pd.Timedelta):
                                     # Formatear Timedelta a HH:MM:SS (o un formato similar aceptado por SQL Time)
                                     # MSSQL TIME es HH:MM:SS[.nnnnnnn]
                                     # pd.Timedelta.components da días, horas, mins, secs, millis, micros, nanos
                                     components = value.components
                                     sign = "-" if value.total_seconds() < 0 else ""
                                     # Asegurar formato HH:MM:SS
                                     formatted_value = f"{sign}{abs(components.hours):02d}:{abs(components.minutes):02d}:{abs(components.seconds):02d}"
                                     # Si necesitas fracciones de segundo:
                                     # if components.milliseconds > 0 or components.microseconds > 0 or components.nanoseconds > 0:
                                     #     # Puedes añadir subsegundos si tu columna SQL TIME los soporta
                                     #     # formatted_value += f".{value.microseconds:06d}" # Ejemplo para microsegundos
                                 else:
                                      # Si llegamos aquí con otro tipo que no sea NaN y no pudo convertirse a Timedelta/Timestamp,
                                      # significa que el mapeo o dtype sugería tiempo/duración pero el valor no encaja.
                                      # Tratar como texto: convertir a string, escapar comillas internas y citar
                                      print(f"Advertencia (Fila {index}, Col '{col}'): Valor inesperado '{value}' para tipo hora/duración. Tratando como texto.")
                                      if isinstance(value, str):
                                           escaped_value = value.replace("'", "''")
                                           formatted_cells.append(f"'{escaped_value}'")
                                      else:
                                           formatted_cells.append(f"'{str(value)}'")
                                      continue # Pasar a la siguiente celda

                                 formatted_cells.append(f"'{formatted_value}'") # Agregar comillas simples

                             except Exception as e:
                                 # Si falla el formateo de hora/duración, tratar como texto
                                 print(f"Advertencia (Fila {index}, Col '{col}'): Error formateando hora/duración '{value}': {e}. Tratando como texto.")
                                 # Tratar como texto: convertir a string, escapar comillas internas y citar
                                 if isinstance(value, str):
                                     escaped_value = value.replace("'", "''")
                                     formatted_cells.append(f"'{escaped_value}'")
                                 else:
                                     formatted_cells.append(f"'{str(value)}'")


                        # --- Formateo Numérico ---
                        elif expected_type == 'numeric' or pdtypes.is_numeric_dtype(dtype):
                            try:
                                # Para SQL insert, solo el número es necesario (sin comillas)
                                # Pandas puede representar enteros como float (ej: 5.0), convertir a int si es posible
                                if pdtypes.is_integer_dtype(dtype) or (isinstance(value, float) and value == int(value)):
                                     formatted_value = str(int(value))
                                elif pdtypes.is_float_dtype(dtype):
                                     # Mantener formato float, usar strip('.0') para enteros que quedan como X.0
                                     formatted_value = str(value).rstrip('0').rstrip('.') or '0' # '123.0' -> '123', '123.45' -> '123.45'
                                else: # Otros tipos numéricos o si la conversión falla
                                     formatted_value = str(value) # Usar representación string directa

                                # Agregar el valor numérico formateado (sin comillas)
                                formatted_cells.append(formatted_value)

                            except Exception as e:
                                 # Si falla el formateo numérico (ej: contiene texto inesperado), tratar como texto
                                 print(f"Advertencia (Fila {index}, Col '{col}'): Error formateando numérico '{value}': {e}. Tratando como texto.")
                                 # Tratar como texto: convertir a string, escapar comillas internas y citar
                                 if isinstance(value, str):
                                     escaped_value = value.replace("'", "''")
                                     formatted_cells.append(f"'{escaped_value}'")
                                 else:
                                     formatted_cells.append(f"'{str(value)}'")


                        # --- Formateo de Texto (por defecto) ---
                        else:
                            # Por defecto: Tratar como texto y encerrar en comillas simples
                            # Esto incluye columnas no listadas en tipo_columnas_mapeo o marcadas como 'text'.
                            # ¡IMPORTANTE! Escapar comillas simples dentro del texto duplicándolas para SQL Server (' -> '')
                            if isinstance(value, str):
                                escaped_value = value.replace("'", "''")
                                formatted_cells.append(f"'{escaped_value}'")
                            else:
                                # Si no es un string (pero tampoco NaN/numérico/fecha/tiempo manejado arriba),
                                # simplemente convertir a string y citar.
                                print(f"Advertencia (Fila {index}, Col '{col}'): Tipo inesperado ({type(value)}) para '{value}'. Tratando como texto por defecto.")
                                formatted_cells.append(f"'{str(value)}'")


                # Unir las celdas formateadas con el separador interno, encerrar en paréntesis
                line_to_write = f"({separador_interno.join(formatted_cells)})"

                # Determinar si es la última línea para usar ; en lugar de ,
                if i == total_rows - 1:
                    line_to_write += ';'
                else:
                    line_to_write += ','

                # Agregar el salto de línea
                f.write(line_to_write + '\n')

            print(f"\nDatos formateados en formato SQL VALUES y guardados exitosamente en '{ruta_archivo_txt}'.")
            print(f"Total de filas escritas: {total_rows}")


        # --- Manejo de excepciones ---
    except FileNotFoundError:
        print(f"\nError: Asegúrate de que el archivo Excel exista en la ruta especificada: {ruta_archivo_excel}")
    except ImportError:
        print("\nError: Las librerías pandas y openpyxl no están instaladas. Por favor, instala con: pip install pandas openpyxl")
    except Exception as e:
        print(f"\nOcurrió un error inesperado: {e}")
        # Opcional: imprimir el traceback completo para depuración
        import traceback
        traceback.print_exc()

# --- CONFIGURACIÓN ---
# Reemplaza 'tu_archivo.xlsx' con la ruta y nombre real de tu archivo Excel
# Reemplaza 'salida_datos.txt' con el nombre que desees para el archivo de texto de salida

archivo_excel_entrada = r'C:\Users\...\...\...\proyecto_mssqls.xlsx'
archivo_txt_salida = r'C:\Users\...\...\...\datos_conparentesis.txt'

# --- MAPEO DE TIPOS DE COLUMNA ---
# Define aquí el tipo esperado para CADA columna listada en formato_deseado['columnas'].
# Esto le dice al código cómo formatear CADA columna para la salida SQL.
# - 'date': Formato 'YYYY-MM-DD' (entre comillas simples)
# - 'time'/'duration': Formato 'HH:MM:SS' (entre comillas simples).
# - 'numeric': Número como string (sin comillas), ej: 123 o 123.45. Intenta quitar .0 si es posible.
# - 'text': Cualquier otro tipo (entre comillas simples). Escapa comillas internas con doble comilla simple (' -> '')
# Si una columna no está en este mapeo, se tratará como 'text' por defecto.
tipo_columnas_mapeo = {
    'Unique ID': 'text',
    'Date Taken (America/New_York)': 'date',
    'Time Taken (America/New_York)': 'time', # Asumiendo que esto debería ser HH:MM:SS
    'Time Spent': 'time', # Asumiendo que esto es una duración a formatear como HH:MM:SS
    'Q1 - Which Title Best Fits your Current Role?': 'text',
    'Q2 - Did you switch careers into Data?': 'text',
    'Q3 - Current Yearly Salary (in USD)': 'text', # Mantenido como texto por rangos ('106k-125k')
    'Q4 - What Industry do you work in?': 'text',
    'Q5 - Favorite Programming Language': 'text',
    'Q6 - How Happy are you in your Current Position with the following? (Salary)': 'numeric', # Asumo que son números (ej: escala 1-10)
    'Q6 - How Happy are you in your Current Position with the following? (Work/Life Balance)': 'numeric',
    'Q6 - How Happy are you in your Current Position with the following? (Coworkers)': 'numeric',
    'Q6 - How Happy are you in your Current Position with the following? (Management)': 'numeric',
    'Q6 - How Happy are you in your Current Position with the following? (Upward Mobility)': 'numeric',
    'Q6 - How Happy are you in your Current Position with the following? (Learning New Things)': 'numeric',
    'Q7 - How difficult was it for you to break into Data?': 'text',
    'Q8 - If you were to look for a new job today, what would be the most important thing to you?': 'text',
    'Q9 - Male/Female?': 'text',
    'Q10 - Current Age': 'numeric', # Asumo que es un número entero
    'Q11 - Which Country do you live in?': 'text',
    'Q12 - Highest Level of Education': 'text', # Asumiendo que es texto libre o categorías
    'Q13 - Ethnicity': 'text' # Asumiendo que es texto libre o categorías
}

formato_deseado = {
    'columnas': list(tipo_columnas_mapeo.keys()), # Usar las claves del mapeo asegura que estén todas y en orden
    'separador': ',', # Separador interno dentro de los paréntesis
    # 'incluir_encabezado': False # Ya forzado a False dentro de la función para este formato
}
# --- FIN DEL FORMATO ---


# --- EJECUTAR LA FUNCIÓN ---
if __name__ == "__main__":
    # Llamar a la función pasando la configuración y el mapeo de tipos de columna
    procesar_excel_a_txt(archivo_excel_entrada, archivo_txt_salida, formato_deseado, tipo_columnas_mapeo)