#install.packages('plotly')
library(ggplot2)
library(plotly)

pl <- ggplot(mtcars,aes(x=mpg,y=wt))+geom_point()
pl

gpl <- ggplotly(pl)
