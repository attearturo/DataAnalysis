install.packages("ggplot2")
install.packages("knitr")

library(ggplot2)
library(knitr)

str(diamonds)

//Diagrama de dispersion con Precio y Peso como ejes
grafico <- ggplot(diamonds, aes(x=diamonds$carat, y=diamonds$price))
grafico <- grafico + geom_point(aes(color = diamonds$clarity, alpha = 0.5))
grafico

//Diagrama de dispersion con Precio y Peso como ejes, facetas
grafico <- ggplot(diamonds, aes(x=diamonds$carat, y=diamonds$price))
grafico <- grafico + labs(x="Peso", y="Precio", title="Comercio de Diamantes") + facet_grid(~ diamonds$cut) + geom_point(aes(color = diamonds$color, alpha = 0.5))
grafico
