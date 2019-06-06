v1 <- c(100,200,300)
v2 <- c('a','b','c')
print(v1)
print(v2)

#INDEXING
#IN R, INDEXING STARTS AT 1
v1[2]#SQUARE BRACKETS CONTAIN POSITION
#RETURNS ELEMENT AT POSITION 2 IN v1

#MULTIPLE INDEXING by passing vector of indexes inside square brackets
v1[c(1,2)]#FIRST TWO ELEMENTS
v2[c(1,3)]#GRABBING A&C

#SLICING
v3 <- c(1,2,3,4,5,6,7,8,9,10)
print(v3)
v3[2:4]#BOTH INCLUSIVE
v3[7:10]

#NAMES FUNCTION
v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')
v[2]
v['b']
#both give same output
v[c('c','d','a')]#MULTIPLE INDEXING

#BOOLEAN MASKING
print(v)
#FILTER OUT VALUES LESS THAN 2
v[v>2]#WILL SELECT ONLY THOSE WITH VALUE GREATER THAN 2
v>2
#NOTICE DIFFERENCE

#ANOTHER METHOD
my.filter <- v>2
v[my.filter]

 