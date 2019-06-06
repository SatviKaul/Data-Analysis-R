#Creating a data frame
empty <- data.frame()
c1 <- 1:10
c1
letters#Vector of alphabets
c2 <- letters[1:10]
c1
c2
df <- data.frame(col.name.1 = c1, col.name.2 = c2)#parameters passed are column names
df

#Importing and exporting data
write.csv(df,file = "saved_df.csv")
df2 <- read.csv('saved_file.csv')
df2#csv also saves index info

#Getting info about df
df
nrow(df)#no of rows
ncol(df)#no of columns
colnames(df)#gives name of columns in vector format
rownames(df)#if df is large, the vector output will be very big
str(df)#gives structure and data types
summary(df)#statistical summary of df

#Referencing Cells
df
df[[5,2]]#fifth row, second column
df[[5,'col.name.2']]#using column name
df[[2,'col.name.1']] <- 9999#assigning new value

#Referencing Rows
df[1,]#Returns df of row 1

#Referencing Columns
mtcars
head(mtcars)
mtcars$mpg
mtcars[,'mpg']
mtcars[,1]
mtcars[['mpg']]#Returns vector
mtcars['mpg']#Returns data frame
mtcars[c('mpg','cyl')]
head(mtcars[c('mpg','cyl')])