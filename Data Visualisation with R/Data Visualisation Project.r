df <- read.csv("Economist_Assignment_Data.csv")
head(df)
library(ggplot2)
pl <- ggplot(df,aes(x=CPI,y=HDI,color=Region,fill='white'))
pl2 <- pl+geom_point(size=2,shape=1)
pl3 <- pl2 + geom_smooth(aes(group=1),method = 'lm',formula = y~log(x), se = FALSE, color = 'red')
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")
pl4 <- pl3 + geom_text(aes(label =Country),color='gray20', data = subset(df,Country %in% pointsToLabel), check_overlap = TRUE)
pl5 <- pl4+theme_bw()+scale_x_continuous(name='Corruption Perceptions Index,2011(10=least corrupt)',limits =c(1,10), breaks = 1:10)+scale_y_continuous(name='Human Development Index,2011(1=Best)',limits = c(0.2,1.0))
pl5 + ggtitle('Corruption And Human Development',)

