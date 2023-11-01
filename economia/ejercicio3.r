# Realiza un gráfico comparativo del PIB nominal y el PIB real en México 2012-2022 (anual)

# librerías necesarias
library(wbstats)
library(ggplot2)

# Obtener datos del PIB nominal de México para 2012-2022
pib_nominal_mexico <- wb(indicator = "NY.GDP.MKTP.CD", country = "MEX", startdate = 2012, enddate = 2022)

# Obtener datos del PIB real de México para 2012-2022
pib_real_mexico <- wb(indicator = "NY.GDP.MKTP.KD", country = "MEX", startdate = 2012, enddate = 2022)

datos_mexico <- data.frame(Año = pib_nominal_mexico$date,
                           PIB_Nominal = pib_nominal_mexico$value,
                           PIB_Real = pib_real_mexico$value)

ggplot(data = datos_mexico,
  aes(x = Año)) +
  theme_minimal() +
  geom_line(aes(y = PIB_Nominal, color = "PIB Nominal"), size = 1) +
  geom_line(aes(y = PIB_Real, color = "PIB Real"), size = 1) +
  labs(title = "Comparación del PIB Nominal y el PIB Real en México (2012-2022)",
        x = "Año",
        y = "Valor en miles de millones de dólares",
        color = "Indicador") +
  scale_color_manual(values = c("PIB Nominal" = "blue", "PIB Real" = "red"))














