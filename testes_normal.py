# -*- coding: utf-8 -*-
"""
Created on Tue Feb 26 16:40:59 2019

@author: matheus
"""

# importando alguns recursos estatísticos
from scipy import stats
from scipy.stats import norm
# importando uma biblioteca para geração de gráficos
import matplotlib.pyplot as plt

# variavel para guardar valores dist. normalmente vindos de rvs() com 100 elementos
dados = norm.rvs(size=100)
dados
# Diagrama de probabilidade Normal
stats.probplot(dados, plot=plt)
# teste de shapiro-wilk
stats.shapiro(dados)