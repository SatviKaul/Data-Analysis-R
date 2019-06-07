v <- c(1,2,3)
m <- matrix(1:10, nrow = 2)
df <- mtcars
class(v)
class(m)
class(df)

#put all in a single structure
#list allows us to combine all these in a single structure
my.list <- list(v,m,df)
my.list

#Naming different elements of list
my.name.list <- list(sample_vec=v, my.matrix=m, sample.df=df)

#Accessing
my.name.list$df
my.list[1]
my.name.list[1]
my.name.list['sample_vec']
class(my.name.list['sample_vec'])
my.name.list$sample_vec#To return vector, not list
my.name.list[['sample_vec']]#Same as $

#Combing lists
double.list <- c(my.list, my.name.list)

str(my.name.list)