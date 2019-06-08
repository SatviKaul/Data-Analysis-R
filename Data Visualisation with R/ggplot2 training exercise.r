library(ggplot2)
library(ggthemes)
head(mpg)

#Question 1: Histogram of hwy mpg values:

pl <- ggplot(mpg,aes(x=hwy))
pl2 <- pl+geom_histogram(fill='pink')
print(pl2)

#Question 2: Barplot of car counts per manufacturer with color fill defined by cyl count

pl <- ggplot(mpg,aes(x=manufacturer))
pl2 <- pl+geom_bar(aes(fill=factor(cyl)))
print(pl2)

#Question 3: Switch now to use the txhousing dataset that comes with ggplot2

head(txhousing)

#Question 4: Create a scatterplot of volume versus sales. Afterwards play around with alpha and color arguments to clarify information.

pl = ggplot(txhousing,aes(x=sales,y=volume))
pl2 = pl+geom_point(color='blue',alpha=0.5)
print(pl2)

#Question 5: Add a smooth fit line to the scatterplot from above
pl = ggplot(txhousing,aes(x=sales,y=volume))
pl2 = pl+geom_point(color='blue',alpha=0.5)+geom_smooth(color='red')
print(pl2)
