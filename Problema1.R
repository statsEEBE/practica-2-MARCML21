#Codigo para problema 1

#trobeyu eñ coeficient de determinacio o de bonat d'ajust

Rsq  <- 0.192 #(multiple r-squared)
R <- sqrt(Rsq)

#quina variacio esperem del valor del mercat per augment de una unitat dels actius(pendiente)
m <-0.0658
b <- 11.789 #(intercept)
x <- 647.1
m*x+b
