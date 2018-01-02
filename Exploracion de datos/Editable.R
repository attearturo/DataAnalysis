install.packages("ggplot2")
install.packages("knitr")

library(ggplot2)
library(knitr)

str(diamonds)

#Diagrama de dispersion con Precio y Peso como ejes
grafico <- ggplot(diamonds, aes(x=diamonds$carat, y=diamonds$price))
grafico <- grafico + geom_point(aes(color = diamonds$clarity, alpha = 0.5))
grafico

#Diagrama de dispersion con Precio y Peso como ejes, facetas
grafico <- ggplot(diamonds, aes(x=diamonds$carat, y=diamonds$price))
grafico <- grafico + labs(x="Peso", y="Precio", title="Comercio de Diamantes") + facet_grid(~ diamonds$cut) + geom_point(aes(color = diamonds$color, alpha = 0.5))
grafico

table(diamonds$cut)
table(diamonds$clarity)
table(diamonds$color)

#Tablas
grafico <- ggplot(diamonds, aes(x=diamonds$clarity))
grafico <- grafico + geom_bar()
grafico

#Histograma
grafico <- ggplot(diamonds, aes(x=diamonds$price))
grafico <- grafico + geom_histogram(binwidth = 10)
grafico

#Diagrama de cajas
grafico <- ggplot(diamonds, aes(x=color, y=price))
grafico <- grafico + geom_boxplot()
grafico

#Diagrama de cajas con variables categori as
grafico <- grafico + facet_grid(cut~.)
grafico

#Curva de densidad
promZ <- mean(diamonds$z)
grafico <- ggplot(diamonds, aes(x=diamonds$z, fill="red", color="red", alpha=0.3))
grafico <- grafico + geom_density()
grafico <- grafico + geom_vline(xintercept = promZ)
grafico

grafico <- ggplot(diamonds, aes(price, fill = cut, color = cut))
grafico <-grafico + geom_density(alpha = 0.1)
grafico

grafico <- ggplot(diamonds, aes(price, fill = clarity, color = clarity))
grafico <-grafico + geom_density(alpha = 0.1)
grafico
