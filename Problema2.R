#Codigo para problema 2
mis_dades <- iris
mis_dades

#fer recta de regresió

x <- mis_dades$Petal.Length
y <- mis_dades$Sepal.Length

plot(x,y)

#medias
x_bar <- mean(x)
y_bar <- mean(y)

#calcul de la pendent(formula universal)

m <- sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)
m
 #calcul del tall a l'eix d'absisses
b <- y_bar - m*x_bar
b

#prediccio de petal length=1.5

prediccio <- m*1.5 + b
prediccio

#coef determinacion
x_pred <- x
x_pred
y_pred <- m*x_pred+b

plot(x,y)
lines(x_pred,y_pred)

Rsq <- sum((y_pred-y_bar)^2)/sum((y-y_bar)^2)
Rsq

cor <- sqrt(Rsq)
cor

mod <- lm(y~x)
mod

summary(mod)

cor.test(x,y)

y_pred2 <- predict(mod, data.frame(x=x))
y_pred2
