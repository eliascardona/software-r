# Elias Eduardo Cardona Rodriguez
# Lic. en Informatica 3A
# Laboratorio día 29-AGO-2023

# -------------------------------------------------------------------------------
# vino blanco
vinosBlancos<-read.csv(file.choose(), header=TRUE, sep=";")
head(vinosBlancos)
# formato a los datos del vino blanco
tbl1<-with(vinosBlancos, table(citric.acid))
x1<-tbl1
mean(x1)
# desviacion estandar del vino blanco
sd_vinosBlancos<-sd(x1)
# plot
boxplot(tbl1, main="Vino blanco", xlab="acído cítrico")






# -------------------------------------------------------------------------------
# vino rojo
vinosRojos<-read.csv(file.choose(), header=TRUE, sep=";")
head(vinosRojos)
# formato a los datos del vino rojo
tr1<-with(vinosRojos, table(citric.acid))
x2<-tr1
mean(x2)
# desviacion estandar del vino rojo
sd_vinosRojos<-sd(x2)
# plot
boxplot(tr1, main="Vino rojo", xlab="acído cítrico")










