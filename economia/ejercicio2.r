# Realiza una tabla del PIB nominal per cápita y su gráfica de los años 2012-2022 de los 
# mismos países.

# librerías necesarias
library(wbstats)
library(ggplot2)

# lista de países de interés
paises_interes <- c("MEX", "IND", "CHN", "MAR", "FIN", "ARG", "SEN")

# Obtener datos del PIB nominal per cápita para los países y el rango de años deseado
datos_pib_per_capita <- wb(indicator = "NY.GDP.PCAP.CD", country = paises_interes, startdate = 2012, enddate = 2022)

Tabla_PIB_Per_Capita <- data.frame(País = datos_pib_per_capita$country, Año = datos_pib_per_capita$date, PIB_Per_Capita = datos_pib_per_capita$value)

ggplot(data = Tabla_PIB_Per_Capita,
  aes(x = Año, y = PIB_Per_Capita, color = País)) +
  theme_minimal() +
  geom_line() +
  labs(title = "PIB Nominal Per Cápita (2012-2022) de Varios Países",
       x = "Año",
       y = "PIB Nominal Per Cápita (USD)",
       color = "País") +
  scale_color_brewer(palette = "Set3")









