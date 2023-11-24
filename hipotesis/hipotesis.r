#  ----------------------------
#  Prueba de hipótesis para una
#  proporción en software R
#  ----------------------------


#            x   significa "éxitos"
#            n   significa "conteos"
#            p   significa "prob. de éxito"


#            alternative  indicativo del simbolo que aprece en la hipótesis alternativa



#     ------------------------------------------------------------
#	     #			|	tam. de muestra		|	clavos defectuosos
#     ------------------------------------------------------------
#		planta 1	|			200			|		4
#		planta 2	|			180			|		3
#     ------------------------------------------------------------

log1 <- prop.test(x=4, n=200, p=0.01, alternative="greater")
log2 <- prop.test(x=4, n=(200, 180), p=0.01, alternative="greater")


print(log1)
print(log2)









