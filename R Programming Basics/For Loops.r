v <- c(1,2,3,4,5)
for(variable in v){
  print(variable)
  #Execute some code
  #For every variable in iterable object
  print('Hello')
  result <- variable+1
  print(paste0('Variable + 1 is:',result))
}

#Lists 
mylist <- list(c(1,2,3,4),mtcars,12)
for(item in mylist){
  print(item)
}

#Matrix
mat<-matrix(1:25, nrow = 5)
print(mat)
for(num in mat){
  print(num)
  #Iteration done through columns
}

#Nested for loops
mat<-matrix(1:25, nrow = 5)
print(mat)
for(row in 1:nrow(mat)){
  #1:nrow(mat)->Gives number of columns
  for(col in 1:ncol(mat)){
    print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
  }
  #Iteration done through columns
}
