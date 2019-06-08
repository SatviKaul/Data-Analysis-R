library(ggplot2)
library(ggplot2movies)

#data
pl <- ggplot(movies,aes(x=year,y=rating))
pl+geom_bin2d()
pl+geom_bin2d()+scale_fill_gradient(high = 'red', low = 'green')
pl+geom_bin2d(binwidth=c(3,1))+scale_fill_gradient(high = 'red', low = 'blue')
pl+geom_hex()
pl+geom_density2d()
