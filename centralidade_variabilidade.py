# -*- coding: utf-8 -*-
"""
Created on Mon Feb 18 20:55:10 2019

@author: matheus
"""

import numpy as np
from scipy import stats # para funções estatísticas

jogadores = [40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000]
# calculando a media
np.mean(jogadores)
#calcular a mediana
np.median(jogadores)

# visulizando os quartis, os valores entre colchetes são os quartis que serão mostrados
quartis = np.quantile(jogadores, [0,0.25,0.5,0.75,1])
# calcular o desvio padrão, o parâmetro ddof = 1 serve para que o calculo do desvio seja igual como é no R
np.std(jogadores, ddof=1)

#função describe() fornece valores min, max, média, variancia. Uma maneira geral de ver infos dos dados
stats.describe(jogadores)