#-----
# básico de tabelas em R
#-----

#install.packages("stargazer")
library(stargazer)

#formato Latex
stargazer(iris)
# formato html
stargazer(iris, type="html")
# formato Texto
stargazer(iris, type="text")
# salvar em disco
stargazer(women, out="women.txt", summary=FALSE)
stargazer(women, out="women.html",summary=FALSE)
