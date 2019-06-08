library(ggplot2)
pl <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
print(pl)
pl2 <- pl + coord_cartesian(xlim=c(1,4),ylim=c(15,30))#lim=c(start,end)
print(pl2)
pl3 <- pl+ coord_fixed(ratio = 1/3)#ratio=y/x
print(pl3)

#Facets
pl <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
print(pl)
print(pl + facet_grid(.~cyl))#Syntax for facet(what to facet on y axis tilde symbol what to facet on x axis)
print(pl+ facet_grid(drv ~.))
print(pl+ facet_grid(drv ~ cyl))
