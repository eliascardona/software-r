# Elias Eduardo Cardona Rodriguez
# Lic. en Informatica 3A
# 01-SEP-2023


set.seed(123)

datos_a<-rnorm(7, mean=1000, sd=runif(1, 10, 20))
print("conjunto a:\n")
print(datos_a)
print("media de a:\n")

media_a<-mean(datos_a)
dif <- media_a-1000
nueva_media_a <- media_a-dif

print(media_a)




datos_b<-rnorm(7, mean=1000, sd=runif(1, 5, 10))
print("conjunto b:\n")
print(datos_b)
print("media de b:\n")
print(trunc(mean(datos_b)))


datos_c<-rnorm(7, mean=1000, sd=runif(1, 1, 5))
print("conjunto c:\n")
print(datos_c)
print("media de c:\n")
print(round(mean(datos_c)))


datos_d<-rnorm(7, mean=1000, sd=0)
print("conjunto d:\n")
print(datos_d)
print("media de d:\n")
print(mean(datos_d))






# Definir los cuartiles y el rango
Q1<-100
Q2<-200
Q3<-300
rango<-700

# Calcular el máximo y mínimo para que cumplan con el rango
maximo<-Q3+rango/2
minimo<-Q1-rango/2

# Generar 15 datos aleatorios en ese rango
datos_e<-runif(15, minimo, maximo)
print("conjunto e:\n")
print(datos_e)




# Definir los cuartiles y el rango
Q1<-100
Q2<-200
Q3<-300
rango<-300

# Calcular el máximo y mínimo para que cumplan con el rango
maximo<-Q3+rango/2
minimo<-Q1-rango/2

# Generar 15 datos aleatorios en ese rango
datos_f<-runif(15, minimo, maximo)
print("conjunto f:\n")
print(datos_f)




