# limpeza e tratamento dos dados

# importing data
d = read.csv("R/09/dados/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = T)

# Put names in the columns
colnames(d) = c("Id", "Score", "Estado", "Genero", "Idade", "Patrimonio", "Saldo", "Produtos", "TemCreditCard", "Ativo", "Salario", "Saiu")
head(d)

#Valores faltantes NAs
d[!complete.cases(d),] # will get all incomplete lines

# Salary - categórico
summary(d$Salario)
# see median
median(d$Salario, na.rm = T)
#attribute median in NAs
d[is.na(d$Salario),]$Salario = median(d$Salario, na.rm = T)
# search Nas in salary column
d[!complete.cases(d$Salario),]


#-------- Gender
gender = d$Genero
unique(gender)
summary(gender)
# transform F adn Fem in Feminino, "" in Na, Ma in Masculino (moda)
d[is.na(gender) | gender == "M",]$Genero = "Masculino"
d[d$Genero == "F" | d$Genero == "Fem", ]$Genero = "Feminino"
# see results
summary(gender)
# remove levels not used
d$Genero = factor(d$Genero)
#see again
summary(d$Genero)


#------ AGE
age = d$Idade
summary(age)
# filter
filter = age < 0 | age >120
d[filter, ]$Idade
#not have age NAs
d[is.na(age), ]
# options, fill with median
d[filter, ]$Idade = median(age)
# search again anormal ages
d[filter, ]
summary(age)

#------ Duplicate data
# search duplicate by id
x = d[duplicated(d$Id),]
x
# 81 id has duplicate, delete by id not by indice
d = d[-c(82),]
# search by the duplicated line
d[d$Id == x$Id, ]
# verify again duplicates
x = d[duplicated(d$Id),]
x

# State outside of the domain

# outside the domain - categoric
unique(d$Estado)
summary(d$Estado)
# fill with the moda, RS
d[!d$Estado %in% c("RS", "SC", "PR"),]$Estado = "RS"
summary(d$Estado)
# remove not used factos
d$Estado = factor(d$Estado)
# view again
summary(d$Estado)


# Ouliers
# outlier, creating one common parameter with standard deviation 
desv = sd(d$Salario, na.rm = T)
desv
d[d$Salario >= 2 * desv, ]$Salario
# other form but without NAs
boxplot(d$Salario, outline = F)
x = boxplot(d$Salario)$out
x
# update all to median
median(d$Salario)
d[d$Salario >= 2 * desv,]$Salario = median(d$Salario)
#check if outliners go out
d[d$Salario >= 2 *desv, ]$Salario
