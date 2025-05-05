a <- 1 + 1
# pacote tidyverse
install.packages("tidyverse")
library(tidyverse) 
#carregarbiblioteca
#Base de DADOS BANCO MUNDIAL
install.packages("WDI")
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

dadospibcze <- WDI(country = 'CZE',
                   indicator ='NY.GDP.MKTP.CD',
                  start=1980,end=2018)

dadosburundi <- WDI(country = 'BDI',
                   indicator ='IE.PPI.WATR.CD',
                   start=1960,end=2017)

dadosmortenatural <- WDI(country = 'all',
                         indicator ='SH.DTH.NCOM.ZS',
                         start=1994,end=2014)
dadospopulaçaoHomem <- WDI(country = 'all',
                           indicator ='SP.POP.TOTL.MA.IN',
                           start=1994,end=2014)

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

install.packages("ggplot2")
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)
install.packages("showtext")
library(showtext)
install.packages("scales")
library(scales)

# DADOS EM PAINEL

#grafpainel <- ggplot(dadospib,
#                     mapping = aes(y = NY.GDP.MKTP.CD,
#                                   x = year)) +
#  geom_point()

#print(grafpainel)

# CORTE TRANSVERSAL

#grafcorte <- ggplot(dadospib2023,
#                    mapping = aes(y = NY.GDP.MKTP.CD,
#                                  x = year)) +
#  geom_point()

#print(grafcorte)

# SÉRIE TEMPORAL

#grafserie <- ggplot(dadospibbr,
#                    mapping = aes(y = NY.GDP.MKTP.CD,
#                                  x = year)) +
 # geom_line()

#print(grafserie)

#GraficoSerie
library(ggplot2)
library(scales)

# Remover NAs
dadoslimpos <- na.omit(dadospibcze)

# Criar o gráfico com linha verde e formatação moderna
grafserie <- ggplot(dadoslimpos, aes(x = year, y = NY.GDP.MKTP.CD)) +
  geom_line(color = "#27ae60", size = 1.8, alpha = 0.85) +  # Linha verde elegante
  scale_y_continuous(labels = label_number_si()) +  # Formatação de números em bilhões/trilhões
  scale_x_continuous(breaks = seq(1980, 2020, by = 5)) +
  labs(
    title = "PIB da República Tcheca (1980–2018)",
    subtitle = "Produto Interno Bruto em dólares americanos (US$)",
    x = "Ano",
    y = "PIB",
    caption = "Fonte: Banco Mundial (WDI)"
  ) +
  theme_minimal(base_family = "sans") +
  theme(
    plot.background = element_rect(fill = "#f9f9f9", color = NA),
    panel.grid.major = element_line(color = "gray85"),
    panel.grid.minor = element_blank(),
    plot.title = element_text(size = 18, face = "bold", color = "#145A32"),
    plot.subtitle = element_text(size = 13, color = "#2E7D32"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    plot.caption = element_text(size = 9, hjust = 1, color = "gray50")
  )

# Exibir gráfico
print(grafserie)





#GraficoTemporal

grafcorte <- ggplot(dadospopulaçaoHomem,
                    mapping = aes(y = SP.POP.TOTL.MA.IN,
                                  x = year)) +
  geom_col()
print(grafcorte)


#Grafico Painel

grafpainel <- ggplot(dadosmortenatural,
                     mapping = aes(y = SH.DTH.NCOM.ZS,
                                   x = year)) +
  geom_point(na.rm = TRUE)
print(grafpainel)


#Criar um Documento HTML em quarto
#Isto é uma pagiina de internet 

#1 Passo
#Instalar o Pacote Quarto
install.packages('quarto')

#2 Passo
#Criar o Documento 














      












                   


