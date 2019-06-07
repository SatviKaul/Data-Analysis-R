seq(0,10,by=2)#Allows us to generate sequences from starting to end with defined step size

#Sort a vector
v<-c(1,4,5,2,8,5,7,9)
sort(v)#Ascending
sort(v, decreasing = TRUE)#Descending
cv<-c('d','a','b','c')
sort(cv)#Sorts in alphabetical order, irrespective of capital or small

#Rev
v<- 1:10
rev(v)

#str
x <-mtcars
str(x)

#summary

summary(mtcars)

#Append

v<-1:10
v2<-34:40
append(v,v2)#Works on both lists and vectors

#checking data types

is.vector(v)
is.data.frame(v)
is.data.frame(mtcars)

#convert data type
v<-1:10
as.list(v)
as.matrix(v)
