# Elias Eduardo Cardona Rodriguez
# Lic. en Informatica 3A
# Actividad dia 04-OCT-2023


# vars
personas <- seq(0, 10)

probb <- dbinom(x=personas, size=10, prob=0.25)


cbind(personas, probb)
plot(personas, probb)


sum(dbinom(x=5:10, size=10, prob=0.25))




