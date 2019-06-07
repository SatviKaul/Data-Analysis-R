x <- 0
while(x<=10){
  print(paste0('x is:', x))
  x <- x+1
}

#Break Keyword
x <- 0
while(x<10){
  print(paste0('x is:', x))
  x <- x+1
  if(x==10){
    print('X is now equal to 10! Break Loop!')
    break#Try running code without break and see difference
    print('I printed too')
  }
}
x <- 0
while(x<10){
  print(paste0('x is:', x))
  x <- x+1
  if(x==5){
    print('X is now equal to 5! Break Loop!')
    break#Will break out of outside loop, because if statements are just conditional checks
}
}