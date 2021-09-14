# Lattice

# carregando o lattice
library(lattice)
#Boxplot
bwplot(trees$Volume)
bwplot(trees$Volume, main="Árvores", xlab="Volume")

#Histograma
# Aspecto é a aprovação, nint número de quebras, type: percent, count, desnsity
histogram(trees$Volume, main="Árvores", xlab="Volume", aspect=1, type="percent", nint=10)

# Histograma condicional
# PEso das galinhas de acordo com a alimentação
chickwts
histogram(chickwts$weight)
# agregando dados
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)
# histograma condicional
histogram(~weight | feed, data=chickwts)


# Gráfico de dispersão condicional
# CO2, seis plantas em dois locais, refrigeradas ou não durante a noite
# CO2, conc: concentração de co2, uptake: captação de co2
CO2
xyplot(CO2$conc ~CO2$uptake)
# type é a origem
xyplot(CO2$conc ~ CO2$uptake | CO2$Type)
# refrigerado ou não
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment)


# Cancer de esôfago
# agegp: idade, alcgp, alcool tobgp: tabaaco
esoph
dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp)


# Matriz de dispersão
splom(~CO2[4:5] | CO2$Type, CO2)


# Densidade condicional
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)
densityplot(~CO2$conc)
densityplot(~CO2$conc | CO2$Treatment)

# Gráfico 3D
# spray para repelir abelhas
d = OrchardSprays
cloud(decrease ~ rowpos * colpos, data=d)
cloud(decrease ~ rowpos * colpos, groups=treatment, data=d)

# Level plot
# Circunferência, largurae colume de árvores
trees
levelplot(Girth ~ Height * Volume, data=trees)
