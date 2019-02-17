# -*- coding: utf-8 -*-
"""
Created on Sun Feb 17 11:07:14 2019

@author: matheus
"""

# importando a biblioteca pandas para análise de dados e numpy para funções matemáticas
import pandas as pd
import numpy as np

#importando o conjunto de dados em csv
base = pd.read_csv('iris.csv')
# visualiza o conjunto de dados
base
# visualiza o número de linhas e colunas
base.shape
# gerando sempre o mesmo n. de linhas de 0s e 1s usando seed como semente
# np.random.seed(123)
# gerando a amostra
amostra = np.random.choice(a=[0,1], size=150, replace=True, p=[0.5,0.5])
# tamanho da amostra
len(amostra)
# n. de linhas com 1
len(amostra[amostra == 1])
len(amostra[amostra == 0])

