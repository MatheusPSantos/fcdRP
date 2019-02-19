# -*- coding: utf-8 -*-
"""
Created on Mon Feb 18 21:15:50 2019

@author: matheus
"""

# importando a função de binomios
from scipy.stats import binom
# fazendo um lançamento de uma moeda 5 vezes qual a probabilidade de 3 vezes dar cara
prob = binom.pmf(3, 5, 0.5)
# qual a probabilidade de passar por 4 sinais de quatro tempos e 0,1,2,3 ou 4 deles estarem verdes
binom.pmf(0, 4, 0.25)
binom.pmf(1, 4, 0.25)
binom.pmf(2, 4, 0.25)
binom.pmf(3, 4, 0.25)
binom.pmf(4, 4, 0.25) * 100 # retorno em porcentagem

#  função de probabilidade cumutiva
binom.cdf(4,4,0.25)
binom.pmf(7,12,0.25)
binom.cdf(7,12,0.25) # soma todas as possibilidades dentro do total de sucesso esperado