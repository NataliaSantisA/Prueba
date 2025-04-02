# Load packages
library(i2extras)

# Read data
ebola_onset <- read_rds("data/derived-data/02-plot_ebola_onset.rds")


modelo_ajustado <- i2extras::fit_curve(ebola_onset)

tabla <- modelo_ajustado[[4]][[1]]

tabla %>% 
  write_rds("outputs/03-tabla_ebola_onset.rds")