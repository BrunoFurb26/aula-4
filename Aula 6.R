a <- 1 + 1
# pacote tidyverse
#install.packages("tidyverse")
#library(tidyverse) 
#carregarbiblioteca
#Base de DADOS BANCO MUNDIAL
#install.packages("WDI")
#update.packages('wdi')
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
                   indicator ='NY.GDP.MKTP.CD',
                   start=2023,end=2023)
                   
#API É FORMA DE ACESSO
#DADOS DO BANCO MUNDIAL 
#WORLD DEVELOPMENT INDICATORS
                   
dadospibbr <- WDI(country  = 'BR',
            indicator ='NY.GDP.MKTP.CD')

dadosburundi <- WDI(country = 'BDI',
                   indicator ='IE.PPI.WATR.CD',
                   start=1960,end=2017)
#fazer graficos
#ggplot2 (faz parte do Pacote tidyverse)

#dados em painel

# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')
# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)
# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

## FAZER GRÁFICOS
# ggplot2 (faz parte do pacote tidyverse)

#install.packages("tidyverse")
library(tidyverse)

# DADOS EM PAINEL

grafpainel <- ggplot(dadospib,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
  geom_point()

print(grafpainel)

# CORTE TRANSVERSAL

grafcorte <- ggplot(dadospib2023,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_point()

print(grafcorte)

# SÉRIE TEMPORAL

grafserie <- ggplot(dadospibbr,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_line()

print(grafserie)


                   


