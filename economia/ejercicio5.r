# Realiza una tabla comparativa del PIB real (año base 2013)
# de los años 2011-2021 anual del estado de Aguascalientes
library(INEGI.R)
library(ggplot2)

# Obtener datos del PIB real (año base 2013) de Aguascalientes
datos_pib_real_aguascalientes <- get_economic_indicator("PDBA@AGEB",
  start_date = "2011-01-01",
  end_date = "2021-01-01",
  states = "AGS")

ggplot(data = datos_pib_real_aguascalientes, aes(x = date, y = value)) +
  geom_line(size = 1, color = "blue") +
  labs(title = "PIB Real (Año Base 2013) de Aguascalientes (2011-2021)",
       x = "Año",
       y = "PIB Real (Millones de Pesos)",
       color = "Estado") +
  theme_minimal()










