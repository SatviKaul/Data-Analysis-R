library(ggplot2)
df <- mpg
df

#data and aesthetics
pl<- ggplot(df,aes(x=class))
pl+geom_bar(aes(fill=drv))
pl+geom_bar(aes(fill=drv),position='fill')
pl+geom_bar(aes(fill=drv),position='dodge')
