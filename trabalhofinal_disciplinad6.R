lista.de.pacotes = c("tidyverse","lubridate","janitor","readxl","stringr",
                     "repmis","survey","srvyr", "ggplot2", "plotly") # escreva a lista de pacotes
novos.pacotes <- lista.de.pacotes[!(lista.de.pacotes %in%
                                      installed.packages()[,"Package"])]
if(length(novos.pacotes) > 0) {install.packages(novos.pacotes)}
lapply(lista.de.pacotes, require, character.only=T)
rm(lista.de.pacotes,novos.pacotes)
gc()

febre_amarela <- read_csv2("C:/Users/laura/Documents/dados-secundarios/febre_amarela.csv")

FA <- read.csv2("C:/Users/laura/Documents/dados-secundarios/febre_amarela.csv")

febre_amarela %>%
  select(estado_requisitante, Agravo da Requisição, data_solicitacao, data_1_ sintomas )

febre_amarela %>%
  filter(year(dmy(data_decisao)) == 2018)
  select(n_processo, data_decisao, data_registro) %>%
  mutate(tempo = dmy(data_) - dmy(data_d))

