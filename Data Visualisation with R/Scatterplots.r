df <- mtcars
head(mtcars)

#Data and aesthetics
pl <- ggplot(df,aes(x=wt,y=mpg))

#Geometry
pl2 <- pl+geom_point(aes(shape=factor(cyl),color=hp),size=1.5)
#For calling functions like shape and size and wanting it to be based off of other features or columns
#from our data or data frame we should be passing them in the aes function inside the geometry layer
#Otherwise we'll be calling them from standart values
pl2 + scale_color_gradient(low='blue',high='red')
