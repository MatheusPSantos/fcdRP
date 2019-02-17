# -*- coding: utf-8 -*-
"""
Created on Sun Feb 17 16:13:38 2019

@author: Unect
"""

import pandas as pd
import numpy as np
# importação adicional para arredondamento
from math import ceil

populacao = 150
amostra = 15
k = ceil(populacao/amostra)
# definindo aleatoriamente o valor inicial que será feita a seleção
r = np.random.randint(low=1, high=k+1, size=1)
# variavel com o valor inicial de r
acumulador = r[0]
# lista vazia para guardar os valores sorteados
sorteados = []
# laço que irá executar um n de vezes igual a qtd de amostras
for i in range(amostra):
    sorteados.append(acumulador)
    acumulador += k

#selecionando os elementos da base de dados
base = pd.read_csv('iris.csv')
base_final = base.loc[sorteados]
