#install.packages('ggplot2')
#install.packages('ggplot2movies')
library(ggplot2)
library(ggplot2movies)

#DATA & AESTHETICS
pl <- ggplot(movies, aes(x=rating))

#GEOMETRY

pl2 <- pl+geom_histogram(binwidth = 0.1, aes(fill=..count..))

pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')
print(pl3)

print(pl3 +ggtitle('My Title'))
