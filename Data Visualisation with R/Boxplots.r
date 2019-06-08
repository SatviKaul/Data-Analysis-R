library(ggplot2)
df <- mtcars

#data and aesthetics
pl <- ggplot(df,aes(x=factor(cyl),y=mpg))#Boxplots on X-axis need to have categorical variables
pl+geom_boxplot(aes(fill=factor(cyl)))+ theme_dark()
