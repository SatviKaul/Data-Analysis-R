#AND OPERATOR
x = 10
(x < 20) & (X > 5)
(x < 20) & (X > 10) & (x==6)
TRUE & TRUE

#OR OPERATOR

(x==10) | (x==100)
(x==111111) | (x==100000)

#NOT OPERATOR

(10==1)
!(10==1)
!!(10==1)

#real life example

df<- mtcars
head(df)
df[df$mpg>20,]
subset(df, mpg>20 & hp>100 & cyl==6)
