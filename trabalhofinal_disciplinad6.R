lista.de.pacotes = c("tidyverse","lubridate","janitor","readxl","stringr",
                     "repmis","survey","srvyr", "ggplot2", "plotly") # escreva a lista de pacotes
novos.pacotes <- lista.de.pacotes[!(lista.de.pacotes %in%
                                      installed.packages()[,"Package"])]
if(length(novos.pacotes) > 0) {install.packages(novos.pacotes)}
lapply(lista.de.pacotes, require, character.only=T)
rm(lista.de.pacotes,novos.pacotes)
gc()

febre_amarela <- read_csv2("C:/Users/laura/Documents/dados-secundarios/febre_amarela.csv")


