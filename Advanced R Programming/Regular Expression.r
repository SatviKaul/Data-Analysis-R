#Regular expression:Pattern Searching

#grepl
#grep

text<- "Hi there, who are you voting for?"
text

grepl('voting',text)#Returns logical o/p 
grepl('dog', text)#First argument: Pattern, Second Argument: where to search

v<-c('a','b','c','d','d')
grepl('b',v)#Returns a vector

grep('b',v)#Returns index position
grep('d',v)#Returns all postions of pattern
