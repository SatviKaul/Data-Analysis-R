library(ggplot2)
pl <- ggplot(data=mtcars,aes(x=mpg,y=hp))+ geom_point()
plw <-pl + facet_grid(cyl ~.) + stat_smooth()
pl2 + coord_cartesian(xlim = c(15,25))
