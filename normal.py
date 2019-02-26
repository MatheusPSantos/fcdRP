# -*- coding: utf-8 -*-
"""
Created on Tue Feb 26 16:28:06 2019

@author: matheus
"""
from scipy.stats import norm
# função norm para distribuição normal

# Conjunto de objetos em uma cesta, a média é 8 e o desvio padrão é 2
# Qual a probabilidade de tirar um objeto que peso é menor que 6 quilos?
norm.cdf(6, 8, 2)
# cdf() usado para o conceito de menor

# Qual a probabilidade de se tirar um objeto que o peso é maior que 6 quilos?
norm.sf(6, 8, 2)
# cdf() usado para o conceito de maior


# Qual a probabilidade de tirar um objeto que o peso é menor do que 6 ou maior do que 10?
norm.cdf(6,8,2) + norm.sf(10,8,2)

# Qual a probabilidade de tirar um objeto que o peso é menor que 10 e maior que 8 quilos?
norm.cdf(10, 8, 2) - norm.cdf(8, 8, 2)