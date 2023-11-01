# Elias Eduardo Cardona Rodriguez
# Lic. en Informatica 3A
# Laboratorio del jueves 24-AGO-2023


# open file
poblacion<-read.csv(file.choose(), header=TRUE, sep=";")

# working with data
selec1<-sample(x=1:395, size=100)
selec2<-sample(x=1:395, size=15)

# giving a format
muestra100<-poblacion[selec1, ]
muestra15<-poblacion[selec2, ]
# ---
accesoInternetTotal<-with(poblacion, table(internet))
# ---
accesoInternetMuestra100<-with(muestra100, table(internet))
# ---
accesoInternetMuestra15<-with(muestra15, table(internet))




# ---------------------------------------------------
accesoInternetTotal.rlt<-accesoInternetTotal/395
# ---
accesoInternetMuestra100.rlt<-accesoInternetMuestra100/100
# ---
accesoInternetMuestra15.rlt<-accesoInternetMuestra15/15


#barplot(accesoInternetTotal.rlt,
#		main="Fr de la capacidad de acceso a internet del total de la población",
#		xlab="¿Tienen acceso? y/n",
#		ylab="Frec. relativa",
#		ylim=c(0.0, 1.0),
#       col="#87CEEB")


#barplot(accesoInternetMuestra100.rlt,
#		main="Fr de la capacidad de acceso a internet de una muestra pob. de 100 ind.",
#		xlab="¿Tienen acceso? y/n",
#		ylab="Frec. relativa",
#		ylim=c(0.0, 1.2),
#       col="#CB4154")

barplot(accesoInternetMuestra15.rlt,
		main="Fr de la capacidad de acceso a internet de una muestra pob. de 15 ind.",
		xlab="¿Tienen acceso? y/n",
		ylab="Frec. relativa",
		ylim=c(0.0, 1.2),
       col="#CB4154")






