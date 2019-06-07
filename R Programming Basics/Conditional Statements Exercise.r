#Question 1: Write a script that will print "Even Number" if the variable x is an even number, otherwise print "Not Even": 
x <-3
if(x%%2==0){
  print('Even Number')
}else{
  print('Odd Number')
}

#Question 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix, otherwise print "Not a Matrix"
m <- matrix()
if(is.matrix(m)){
  print('Is a Matrix')
}else{
  print('Not a matrix')
}

#Question 3: Create a script that given a numeric vector x with a length 3, will print out the elements in order from high to low. You must use if,else if, and else statements for your logic
vec <- c(3,7,1)
if(vec[1]<vec[2] & vec[1]<vec[3] & vec[2]<vec[3]){
  print(c(vec[1],vec[2],vec[3]))
}else if(vec[1]<vec[2] & vec[1]< vec[3] & vec[2]>vec[3]){
  print(c(vec[1],vec[3],vec[2]))
}else if(vec[2]<vec[1] & vec[2]<vec[3] & vec[1]<vec[3]){
  print(c(vec[2],vec[1],vec[3]))
}else if(vec[2]<vec[1] & vec[2]<vec[3] & vec[1]>vec[3]){
  print(vec[2],vec[3],vec[1])
}else if(vec[3]<vec[1] & vec[3]<vec[2] & vec[1]<vec[2]){
  print(c(vec[3],vec[1],vec[2]))
}else{
  print(c(vec[3],vec[2],vec[1]))
}
  
#Question 4: Write a script that uses if,else if, and else statements to print the max element in a numeric vector with 3 elements. 
vec<-c(20,10,5)
if(vec[1]==max(vec)){
  print(vec[1])
}else if(vec[2]==max(vec)){
  print(vec[2])
}else{
  print(vec[3])
}
