print(sample(x=1:100,3))
#X contains range, second parameter defines how many outputs will come

v<-1:5
addrand <- function(x){
  ran <- sample(x=1:100,1)
  return(x+ran)
}
print(addrand(10))

result <- lapply(v,addrand)#First agrument:vector, Second:function
print(result)
#lapply:Takes vector and applies function to every single element in vector and returns

#sapply:returns vector
y <- sapply(v, addrand)
print(y)

v <-1:5
timestwo <- function(x){
  return(x*2)
}
result <- sapply(v,timestwo)
print(result)

#Anonymous Functions
v<-1:5
result <- sapply(v, function(num){num*2})#Get rid of naming, return statements
print(result)
#Not very good for complex tasks

#Apply for multiple arguments
v<-1:5
add_choice <-function(num,choice){
  return(num+choice)
}
print(add_choice(2,10))

sapply(v, add_choice, choice=100)#Extra parameters can be added in this way