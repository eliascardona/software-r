# Banco Mundial
library("wbstats")

# -------------------------------------
#
# GDP significa Gross Domestic Product
#
# -------------------------------------

# GDP per capita (constant 2010 US$)
Ejemplo2 <- wb_data(indicator = "NY.GDP.PCAP.KD")
View(Ejemplo2)

PIB <- wb_search('gdp.*capita.*constant')
View(PIB)


# Podemos filtrar con las query de R
Ejemplo2 <- wb(indicator = "6.0.GDPpc_constant", 
			   country = c('MX','CA','US'), 
			   startdate = 2010, enddate = 2022)

Ejemplo3 <- wb(indicator = "NY.GDP.PCAP.KD", 
			   country = c('MX','CA','US'), 
			   startdate = 2010, enddate = 2022)



#---- uso de tablas con `data.frame`
Tabla2 = data.frame(Ejemplo2$date, Ejemplo2$value, Ejemplo25$country)
View(Tabla2)


# library(ggplot2)
# ggplot(data=Ejemplo5, aes(x=date, y=value, group=country, colour=country)) +
# ggtitle("Evolución del PIB per cápita (2010-2022), México, USA y Canadá") + geom_line(size=1.5)












