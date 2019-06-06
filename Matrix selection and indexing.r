#VECTOR INDEXING
v <- c(1,2,3,4,5)
v[2]

#MATRIX INDEXING
mat <- matrix(1:50, byrow = T,nrow = 5)
mat

mat[1,5]#First Argument:Row, Second Argument: Column
mat[,1]#Grab all rows from first column
mat[1:3,]#Returns all columns for these three rows
mat[1:2,1:3]#Returns first three elements of first two rows
mat[,9:10]#Returns all rows for last two columns
mat[2:3,15:16]#Returns centre square
