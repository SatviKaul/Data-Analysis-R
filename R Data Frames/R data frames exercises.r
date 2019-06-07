#Question 1:Recreate the following dataframe by creating vectors and using the data.frame function:
Age <- c(22,25,26)
Weight <-c(150,165,120)
Sex <- c('M','M','F')
df<- data.frame(Age, Weight, Sex)
rownames(df)<-c('Sam','Frank','Amy')
df

#Question 2:Check if mtcars is a dataframe using is.data.frame()
is.data.frame(mtcars)

#Question 3: Use as.data.frame() to convert a matrix into a dataframe:
mat<-matrix(1:25, nrow = 5)
as.data.frame(mat)

#Question 4:Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises. 
df<-mtcars

#Question 5: Display the first 6 rows of df 
head(df)

#Question 6: What is the average mpg value for all the cars? 
mean(df$mpg)

#Question 7: Select the rows where all cars have 6 cylinders (cyl column) 
subset(df, cyl ==6)

#Question 8: Select the columns am,gear, and carb. 
df [ , c('am','gear','carb')]

#Create a new column called performance, which is calculated by hp/wt. 
performance<- (df$hp)/(df$wt)
df$Performance <- performance
df
