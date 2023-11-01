# Elias Eduardo Cardona Rodriguez
# Lic. en Informatica 3A
# Práctica previa al examen
blancos<-read.csv(file.choose(), header=TRUE, sep=";")
# ------------------------



# ------------------------
t1<-with(blancos, table(citric.acid))
# ------------------------
meanv<-mean(t1)
sdv<-sd(t1)
# ------------------------
print("IMPRESION DOS")
print(meanv)
print(sdv)


#boxplot(tb1, main="Vino blanco", xlab="acído cítrico")





