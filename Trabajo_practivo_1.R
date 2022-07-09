library(tidyverse)

#Abro el dataset y lo asigno a una variable.

obras <- read.csv("Data/obrasregistradas-acumulado.csv", stringsAsFactors = TRUE)

#Veo las primeras observaciones

head(obras)

#Con Select me quedo con las columnas que me interesan.

obras.select <- select(obras, Seccion, Manzana, Parcela, Fecha.de.registro, Comuna.1, Barrio, Direccion.normalizada, Superficie..m2., Tipo.obra)

#Con Filter me quedo con aquellas de la Comuna 1.

obras.c.1 <- filter(obras.select, Comuna.1 == "Comuna 1")

#Con Mutate indico la fuente.

obras.c.1 <- mutate(obras.c.1, Fuente = "BA Data")

#Ordeno por superficie.

obras.c.1 <- arrange(obras.c.1, Superficie..m2.)

#Elimino las observaciones con valores NA

obras.c.1 <- na.omit(obras.c.1)
