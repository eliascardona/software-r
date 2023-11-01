# Realiza una tabla y su gráfica del PIB nominal de los años 2012-2022 de México, India, 
# China, Marruecos, Finlandia, Argentina, Senegal.

# librerías necesarias
library(wbstats)
library(ggplot2)

# lista de países de interés
paises_interes <- c("MEX", "IND", "CHN", "MAR", "FIN", "ARG", "SEN")

# obtener datos del PIB nominal para los países y el rango de años deseado
datos_pib_nominal <- wb(indicator = "NY.GDP.MKTP.CD", country = paises_interes, startdate = 2012, enddate = 2022)

# creación de una tabla con los datos
Tabla_PIB <- data.frame(País = datos_pib_nominal$country, Año = datos_pib_nominal$date, PIB_Nominal = datos_pib_nominal$value)

# Creación de gráfico de barras con ggplot2
ggplot(data = Tabla_PIB,
  aes(x = Año, y = PIB_Nominal, fill = País)) +
  theme_minimal() +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "PIB Nominal (2012-2022) de Varios Países",
        x = "Año",
        y = "PIB Nominal (en miles de millones de dólares)",
        fill = "País") +
  scale_fill_brewer(palette = "Set3")










