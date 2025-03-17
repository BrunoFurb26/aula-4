a <- 1 + 1
# pacote tidyverse
#install.packages("tidyverse")
library(tidyverse) #carregarbiblioteca
#Base de DADOS BANCO MUNDIAL
#install.packages("WDI")
library(WDI)
#install_github('vincentarelbundock/WDI')

#baixar os dados do pib
#tudo que é porduzido em pais/estadi
#em determinado periodo

#gdp (CURRENCY US$) (NY.GDP.MKPT.CD)
#GROSS DOMESTIC PRODUCT  (GDP) EM DOLARES NORTE-AMERICANOS
#CODIGO (NY.GDP.MKPT.CD)

COD.GDP <- WDIsearch(" GDP ")
#É IMPORTANTE PROCURAR  PELO PORPRIO
#SITE DO BANCO MUNDIAL
#EFICIENTE

#COM O CODIGO VAMOS BAIXAR DADOS

options(scipen = 999)
basepib <- WDI(country  = 'all',
           indicator ='NY.GDP.MKTP.CD')
           
basepib2023 <- WDI(country  = 'all',
                   indicator ='NY.GDP.MKTP.CD')
                   start(2023,end<-2023)
                   


