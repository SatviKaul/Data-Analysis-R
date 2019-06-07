write.csv(mtcars, file = 'my_example.csv')
ex <- read.csv('my_example.csv')
head(ex)
class(ex)
#All operations of data frames can be performed with csv files
write.csv(ex, file = 'my_new_example.csv')

#help can be found for any term using either
#??term; or
#help(term)