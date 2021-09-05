# usando o conjunto de dados trees
trees

# Histograma
hist(trees$Height)
hist(trees$Height, main="Árvores", ylab="Frequencia", xlab="Altura", col="blue")
hist(
  trees$Height,
  main="Árvores",
  ylab="Frequencia",
  xlab="Altura",
  col="blue",
  density=40,
  breaks=20
  )

# Densidade
densidade = density(trees$Height)
plot(densidade)

# Densidade sobre o histograma, parâmetro par
hist(trees$Height, main=NULL, xlab=NULL, ylab=NULL, density=20, col="purple")
par(new=TRUE)
plot(densidade)

# Dispersão
# Comparação de variáveis contínuas
plot(trees$Girth, trees$Volume) # a função plot automaticamente se adapta e cria um gráfico de dispersão
plot(trees$Girth, trees$Volume, main="Árvores")
plot(trees$Girth, trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="blue")

# usando pch que muda o element gráfico
plot(trees$Girth, trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="red", pch=24)

# mudando o tipo
# o tipo L gera linhas
plot(trees$Girth, trees$Volume, ylab="Circunferência", xlab="Volume", col="blue", type="l")

# o tremulação diminui sobre posição
plot(jitter(trees$Girth), trees$Volume, ylab="Circunferência", xlab="Volume")
# Legenda com dimensão catergórica
plot(
  CO2$conc, CO2$uptake,
  pch=20,
  col=CO2$Treatment
)
legend("bottomright", legend=c("nonchilled", "chilled"), cex=1, fill=c("black", "red"))


# Novos dados
plot(trees)

# divisão de tela
split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Volume, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)

# Gráficos Básicos parte 2

# Boxplot - é um gráfico interessante para compreender como os dados estão distribuídos
boxplot(trees$Volume, main="Árvores", xlab="volume")
boxplot(trees$Volume, main="Árvores", xlab="volume", col="blue", horizontal=TRUE)
boxplot(trees$Volume, main="Árvores", xlab="volume", col="blue", outline=F)
boxplot(trees$Volume, main="Árvores", xlab="volume", col="blue", notch=TRUE) #notch
boxplot.stats(trees$Height)
boxplot.stats(trees$Height)$stats

# pode comparar várias variáveis ao mesmo tempo
boxplot(trees)


# Agregação
InsectSprays
spray = aggregate(. ~spray, data=InsectSprays, sum)
spray

# Gráficos de barras
barplot(spray$count, col=gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
box()

# Gráfico de setor - pizza
pie(spray$count, labels=spray$spray, main="Spray", col=c(1:6))
# adicionando legenda
pie(spray$count, labels=NA, main="Spray", col=c(1:6))
legend("bottomright", legend=spray$spray, cex=1, fill = c(1:6))

