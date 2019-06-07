#Adding rows
c1 <- 1:10
c2 <- letters[1:10]
df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')
df2
df
dfnew <- rbind(df,df2)

#Adding columns
df
df$newcol <- 2*df$col.name.1#First method
df
df$newcol.copy <- df$newcol#making copies
df[,'newcol.copy2'] <- df$newcol #Second method, only difference is addressing method
head(df)

#Setting Column names
colnames(df)#Viewing names
colnames(df) <-c(1,2,3,4,5)#renaming all columns at once
colnames(df)[1] <- 'New Col Name'
head(df)

#Selecting Multiple rows
df[1:10,]#selects first 10 rows
df[1:3,]
head(df,7)#returns first 7 rows
df[-2,]#Selects everything except second row
head(mtcars)
mtcars[mtcars$mpg >20,]#Remember to pass comma to avoid error of undefined columns
head(mtcars)
mtcars[(mtcars$mpg >20) & (mtcars$cyl ==6) ,]
mtcars[(mtcars$mpg> 20) & (mtcars$cyl == 6), c('mpg', 'cyl', 'hp')]#Third vector defines names of columns returned
subset(mtcars, mpg>20 & cyl== 6)

#Selecting Multiple Columns
head(mtcars)
mtcars[,c(1,2,3)]
mtcars[,c('mpg','cyl','hp')]

#Dealing with Missing Data
is.na(mtcars)
any(is.na(df))#To check for any missing values
any(is.na(mtcars$mpg))#checking for null values in column
df[is.na(df)] <- 0#Replacing all values with 0
mtcars$mpg[is.na(mtcars$mpg)]<- mean(mtcars$mpg)

