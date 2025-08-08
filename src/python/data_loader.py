"""
data_loader.py
--------------
Funciones generales para cargar y guardar datos en proyectos de análisis de datos.
Compatible con CSV, Excel y Pickle.

By: L.D.R.C
"""

import pandas as pd
import pickle
from typing import Union

def cargar_csv(ruta: str, **kwargs) -> pd.DataFrame:
    """
    Carga un archivo CSV y lo devuelve como DataFrame.
    Parámetros:
        ruta (str): Ruta al archivo CSV.
        **kwargs: Argumentos adicionales para pd.read_csv.
    Retorna:
        pd.DataFrame: DataFrame con los datos cargados.
    """
    return pd.read_csv(ruta, **kwargs)

def guardar_csv(df: pd.DataFrame, ruta: str, **kwargs) -> None:
    """
    Guarda un DataFrame como archivo CSV.
    Parámetros:
        df (pd.DataFrame): DataFrame a guardar.
        ruta (str): Ruta destino del archivo CSV.
        **kwargs: Argumentos adicionales para df.to_csv.
    """
    df.to_csv(ruta, index=False, **kwargs)

def cargar_excel(ruta: str, **kwargs) -> pd.DataFrame:
    """
    Carga un archivo Excel y lo devuelve como DataFrame.
    Parámetros:
        ruta (str): Ruta al archivo Excel.
        **kwargs: Argumentos adicionales para pd.read_excel.
    Retorna:
        pd.DataFrame: DataFrame con los datos cargados.
    """
    return pd.read_excel(ruta, **kwargs)

def guardar_pickle(obj: object, ruta: str) -> None:
    """
    Guarda cualquier objeto de Python en formato pickle.
    Parámetros:
        obj (object): Objeto a guardar.
        ruta (str): Ruta destino del archivo pickle.
    """
    with open(ruta, 'wb') as f:
        pickle.dump(obj, f)

def cargar_pickle(ruta: str) -> object:
    """
    Carga un objeto guardado en formato pickle.
    Parámetros:
        ruta (str): Ruta al archivo pickle.
    Retorna:
        object: Objeto cargado.
    """
    with open(ruta, 'rb') as f:
        return pickle.load(f)