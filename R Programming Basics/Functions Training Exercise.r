#Question 1: Create a function that will return product of two integers

prod <- function(input.1, input.2){
  return(input.1*input.2)
}
prod1 = prod(3,4)
print(prod1)

#Question 2:  Create a function that accepts two arguments, an integer and a vector of integers. It returns TRUE if the integer is present in the vector, otherwise it returns FALSE.

num_check <- function(input.1, input.2){
  for(v in input.2){
    if(v==input.1){
      return ('True')
    }
  }
  return('False')
}
  
num_check(2,c(1,2,3))
num_check(2,c(1,4,5))

#Question 3: Create a function that accepts two arguments, an integer and a vector of integers. It returns the count of the number of occurences of the integer in the input vector. 
num_count <- function(input.1, input.2){
  count=0
  for(v in input.2){
    if(v==input.1){
      count=count+1
    }
  }
  return(count)
}
num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

#Question 4: We will create a function that accepts an integer representing the requested kilograms of aluminum for the package to be shipped. To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed. 

bar_count=function(input.1){
  choice='y'
  y=0
  z=0
  x=0
  while(choice=='y' | choice == 'Y'){
    z=input.1%/%5
    x=input.1%%5
    if(x==0){
      y=0
      choice='n'
    }else if(x<5){
      y=x/1
      choice='n'
    }else if(x==5){
      y=x/5
      choice='n'
    }else{
      choice='y'
    }
  }
return(z+y)  
}  
bar_count(6)  
bar_count(17)

#Question 5:  Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly divisible by 3, then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3.

summer = function(x,y,z){
  out <- c(0)
  
  if(x%%3!=0){
    out<-append(x,out)
  }
  if(y%%3!=0){
    out<-append(y,out)
  }
  if(z%%3!=0){
    out<-append(z,out)
  }
  return(sum(out))
}
summer(7,2,3)

#Question 6: Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE.

prime_check=function(num){
 if(num==2){
   return(TRUE)
 }
 for(x in 2:(num-1)){
   if(num%%x==0){
     return(FALSE)
   }
 }
return(TRUE)
}
prime_check(8)
prime_check(22221)
prime_check(7)
