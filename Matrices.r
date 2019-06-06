#Store data two dimensionally

#SEQUENTIAL VECTOR OF NUMERICS
1:10

v <- 1:10#ASSIGNING TO A VARIABLE

#CREATE A MATRIX
matrix(v)#1-D matrix

matrix(v,nrow = 2)#nrow decides no of rows in matrix

matrix(v, nrow = 2, byrow = T)#DEFAULT VALUES ARE FILLED BY COLUMN, THIS ALLOWS ADDING VALUES BY ROWS

#CREATE MATRICES USING MULTIPLE VECTORS

goog <- c(450,451,452,445,468)
msft <- c(230,231,232,233,220)

stocks <-c(goog,msft)#COMBINING TWO VECTORS

stock.matrix <- matrix(stocks, byrow = T, nrow = 2)

print(stock.matrix)

#NAMING COLUMNS AND ROWS
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('GOOGLE','MICROSOFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

print(stock.matrix)
