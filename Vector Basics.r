#Vectors
nvec <- c(1,2,3,4,5)#C:Combine Function
class(nvec)
cvec <- c("I","N","D","I","A")
class(cvec)
lvec <- c(T,F)
class(lvec)
#Vectors cannot be declared with multiple data types
#Every different element will be converted into elements of the same class
gvec <- c(T,20,40)
print(gvec)
fvec <- c('USA',20,31)
print(fvec)
temp <- c(72,71,68,73,69,75,76)
print(temp)
#Assign names to different values in a vector/Indexing Vectors
#Names should be ordered corresponding to values in vector
#Two ways to assign
names(temp) <- c('Mon','Tue','Wed','Thurs','Fri','Sat','Sun')
temp
days <- c('Mon','Tue','Wed','Thurs','Fri','Sat','Sun')
names(temp) <- days
temp