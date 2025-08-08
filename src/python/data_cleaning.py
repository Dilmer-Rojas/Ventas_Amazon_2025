"""
data_cleaning.py
----------------
Funciones generales para limpieza de datos en DataFrames de pandas.
Incluye: manejo de nulos, duplicados, normalización, y corrección de tipos.

By: L.D.R.C
"""

import pandas as pd
import numpy as np

def corregir_tipos(df: pd.DataFrame, columnas_fecha: list = None) -> pd.DataFrame:
    """
    Convierte columnas a tipo fecha si se especifican.
    Parámetros:
        df (pd.DataFrame): DataFrame original.
        columnas_fecha (list): Lista de nombres de columnas a convertir a datetime.
    Retorna:
        pd.DataFrame: DataFrame con columnas convertidas.
    """
    if columnas_fecha:
        for col in columnas_fecha:
            df[col] = pd.to_datetime(df[col], errors='coerce')
    return df

def eliminar_nulos(df: pd.DataFrame, columnas: list = None) -> pd.DataFrame:
    """
    Elimina filas con valores nulos en las columnas especificadas.
    Si columnas es None, elimina filas con cualquier nulo.
    """
    if columnas:
        return df.dropna(subset=columnas)
    else:
        return df.dropna()

def eliminar_duplicados(df: pd.DataFrame) -> pd.DataFrame:
    """
    Elimina filas duplicadas del DataFrame.
    """
    return df.drop_duplicates()

def normalizar_minmax(df: pd.DataFrame, columnas: list) -> pd.DataFrame:
    """
    Normaliza columnas numéricas al rango [0, 1] usando Min-Max Scaling.
    """
    for col in columnas:
        min_val = df[col].min()
        max_val = df[col].max()
        df[col + '_norm'] = (df[col] - min_val) / (max_val - min_val)
    return df

def estandarizar_zscore(df: pd.DataFrame, columnas: list) -> pd.DataFrame:
    """
    Estandariza columnas numéricas (media 0, desviación estándar 1).
    """
    for col in columnas:
        mean = df[col].mean()
        std = df[col].std()
        df[col + '_zscore'] = (df[col] - mean) / std
    return df

def corregir_texto(df: pd.DataFrame, columnas: list) -> pd.DataFrame:
    """
    Limpia texto: quita espacios, pone en título y elimina tildes.
    """
    import unicodedata
    for col in columnas:
        df[col] = df[col].astype(str).str.strip().str.title()
        df[col] = df[col].apply(lambda x: ''.join(
            c for c in unicodedata.normalize('NFKD', x) if not unicodedata.combining(c)
        ))
    return df