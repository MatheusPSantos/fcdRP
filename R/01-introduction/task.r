# 1
ana = 8
paulo = 12
ifelse(ana > paulo, "A menina é mais velha", "O menino é mais velho")

# 2
class(BOD)

# 3
vetor <- 1:10
for(i in vetor) {
  if(i %% 2 == 0) {
    print(i)
  }
}

# 4
tail(women, n=10)

# 5
colnames(iris)
localIris = iris[50:100,]
sepal = localIris$Sepal.Length
petal = localIris$Petal.Length
plot(sepal, petal)

# 6
vetor1 <- c(1,2,3,4)
vetor2 <- c(2,4,6,8)
vetor1 + vetor2


#7
CO2
print('N de linhas')
nrow(CO2)
print("N de colunas")
ncol(CO2)
print("Nome das linhas")
rownames(co2)
print("Nome das colunass")
colnames(CO2)






