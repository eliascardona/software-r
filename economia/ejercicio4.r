# Realiza una tabla comparativa del PIB real (año base 2013) de los años 2011-2021 anual del
# estado de Aguascalientes, Baja California, Ciudad de México, Colima, Jalisco, San Luis 
# Potosí, Sonora y Guanajuato.
library(INEGI.R)
library(ggplot2)

# Definir los códigos de estados de interés
estados_interes <- c("AGS", "BCN", "CMX", "COL", "JAL", "SLP", "SON", "GUA")

# Obtener datos del PIB real (año base 2013) de los estados
datos_pib_real <- get_economic_indicator("PDBA@AGEB", start_date = "2011-01-01", end_date = "2021-01-01", states = estados_interes)

# Crear un gráfico de líneas con ggplot2
ggplot(data = datos_pib_real, aes(x = date, y = value, color = state_name)) +
  geom_line(size = 1) +
  theme_minimal() +
  labs(title = "PIB Real (Año Base 2013) de Varios Estados de México (2011-2021)"
  x = "Año", y = "PIB Real (Millones de Pesos)", color = "Estado")












