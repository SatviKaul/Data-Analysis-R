#install.packages('tidyr')
#Library(tidyr)
#install.packages('data.table')
#library(data.table)

#gather()
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)
df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df

gather(df,Quarter,Revenue,Qtr1:Qtr4)
#gather collapses data into key value pairs

df%>%gather(Quarter, Revenue, Qtr1:Qtr4)#Another Method

#spread()
stocks <- data.frame(time = as.Date('2009-01-01') + 0:9,
                     X = rnorm(10,0,1),
                     Y = rnorm(10,0,2),
                     Z = rnorm(10,0,4)
)
stocks
stocks.gathered <- stocks %>% gather(stock,price,X:Z)
stocks.gathered <- stocks %>% gather(stock,price,X,Y,Z)
head(stocks.gathered)
stocks.gathered %>% spread(stock,price)
spread(stocks.gathered,stock,price)
spread(stocks.gathered,time,price)

#separate()
df <- data.frame(new.col=c(NA,"a.x","b.y","c.z"))
df
separate(df,new.col,c('ABC','XYZ'))
df <- data.frame(new.col=c(NA,"a-x","b-y","c-z"))
separate(data=df, col = new.col, into = c('abc','xyz'), sep = '-')#sep:at what character you want to separate

#unite
df.sep <- separate(data=df, col = new.col, into = c('abc','xyz'), sep = '-')
df.sep
unite(df.sep,new.joint.col,abc,xyz)
unite(df.sep,new.joint.col,abc,xyz, sep='---')#sep decides what will come in between joint
