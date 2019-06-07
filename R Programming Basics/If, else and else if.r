x<-10
if(x==10){
  print('X is equal to 10')
}else if(x==12){
  print('X is equal to 12')
}else{
  print('X is not equal to 10 or 12')
}

hot <- FALSE
temp<-30

if(temp>80){
  #Execute if condition is true
  print(temp)
  print('Hot Outside')
}else if(temp <=80 & temp>=50){
  print('Nice outside')
}else if(temp==45){
  print('Exactly 45 degrees outside') 
}else{
  print(temp)
  print('Not hot')
}
#INDENTATION IS NOT A CRITICAL ASPECT
print(hot)

