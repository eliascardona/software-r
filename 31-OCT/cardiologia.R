# -------------------------------------
#  Elias Eduardo Cardona Rodriguez
#  Lic. en Informatica 3A
#  Actividades del 28 y 30 AGO-2023
# -------------------------------------

#  EJERCICIO 1
#  La probabilidad de que un paciente sobreviva tras una operacion
#  cardiaca critica es de 0.9 sobre 1.0 ¿Cuál es la probabilidad de que 5 de 
#  los siguientes 7 pacientes sobrevivan?
dbb <- dbinom(x=5, size=7, prob=0.9)
print("de los cinco pacientes, la prob de que sobrevivan es de")
print(dbb)





#  EJERCICIO 2
#  El número de clientes que llegan por hora a ciertas instalaciones
#  de servicio automotriz se supone que sigue una distribución de Possion
#  con media de 7.
#  (a) Calcule la probabilidad de que más de 10 clientes lleguen en un periodo
#  de dos horas.

#  Para P[X>10] o bien, 1 - P[X<=10]


partPoi <- dpois(q=10, lambda=14)
fPoi <- (1 - partPoi)

print("en dos horas, la prob de que lleguen mas de 10 personas es de")
print(fPoi)




#  (b) ¿Cuál es el número medio de llegadas durantes un periodo de tres horas?








































