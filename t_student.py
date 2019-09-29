# -*- coding: utf-8 -*-
"""
@author: Matheuspsantos

"""

from scipy.stats import t

#Média de salário dos cientistas de dados = R$75,00 por hora
# Amostra com 9 funcionários e desvio padrão = 10
# Qual a probabilidade de selecionar um cientista de dados com salário menor que menor que 80R$ a hora

# 1.5 é o valor de t e 8 é o grau de liberdade
t.cdf(1.5, 8)

# Qual a probabilidade de o salario ser maior que 80
t.sf(1.5, 8)

