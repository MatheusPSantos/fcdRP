tempo = read.csv("R/09/dados/tempo.csv", sep=";", na.strings="", stringsAsFactors = T)

tempo


# aparencia
summary(tempo$Aparencia)
tempo[!tempo$Aparencia %in% c("chuva", "nublado", "sol"), ]$Aparencia = "chuva"
# checando se houve atualização do valor fora do padrão
summary(tempo$Aparencia)

# temperatura
median(tempo$Temperatura)
summary(tempo$Temperatura) # mostrando os quartis
tempo[is.na(tempo$Temperatura),] # não tem NAs
boxplot(tempo$Temperatura) # mostrando outliers
boxplot(tempo$Temperatura, outline = F) # sem outliers
mediana = median(tempo$Temperatura)
mediana
desvio = sd(tempo$Temperatura, na.rm = T) # calculando desvio padrao
tempo[tempo$Temperatura >= 2*desvio, ]$Temperatura = mediana # atribuindo mediana a valor fora do limite
summary(tempo$Temperatura)

#Umidade
# umidade deve estar entre 0 e 100
summary(tempo$Umidade)
desvioUmidade = sd(tempo$Umidade, na.rm = T)
medianaUmidade = median(tempo$Umidade, na.rm = T)
tempo[is.na(tempo$Umidade), ] # possui valor Na, substituir pela mediana
tempo[is.na(tempo$Umidade), ]$Umidade = medianaUmidade
tempo
tempo[tempo$Umidade >= 4 * desvioUmidade, ]$Umidade # chacando valor extrapolado de umidade
tempo[tempo$Umidade >=4*desvioUmidade, ]$Umidade = medianaUmidade

#Ventos
summary(tempo$Vento)
# remover NAs
tempo[is.na(tempo$Vento),]$Vento = "FALSO"

# Jogar
summary(tempo$Jogar)
# sem valores anormais na coluna

tempo