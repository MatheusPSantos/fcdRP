# -*- coding: utf-8 -*-
"""
Created on Sun Feb 17 15:34:26 2019

@author: matheus
"""
import pandas as pd
# train_test_split é usado para a divisão da base de dados
from sklearn.model_selection import train_test_split

# carregando a base de dados
iris = pd.read_csv('iris.csv')
iris['species'].value_counts() # fazendo a contagem por classe
# fazendo a separação estratificada por classe
X, _, y, _ = train_test_split(iris.iloc[: , 0:4], iris.iloc[: , 4], test_size=0.5, stratify=iris.iloc[: , 4])
# verificando quantos valores foram retornados de cada classe
y.value_counts()

# carregando a base de dados
infert = pd.read_csv('infert.csv')
infert['education'].value_counts()

# supondo que a amostra seja com 100 registros do total de registro em infert
# (120/248) * 100 = 48.38
# (116/248) * 100 = 46.77
# (12/248) * 100 = 4.8

X1,_, y1,_ = train_test_split(infert.iloc[:, 2:9], infert.iloc[:, 1], test_size=0.6, stratify=infert.iloc[:, 1])
y1.value_counts()
# resultado
#6-11yrs    48
#12+ yrs    46
#0-5yrs      5
#Name: education, dtype: int64
