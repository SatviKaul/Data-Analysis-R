library(dplyr)
head(mtcars)

#Question 1: Return rows of cars that have an mpg value greater than 20 and 6 cylinders. 
head(filter(mtcars, mpg>20,cyl==6))

#Question 2: Reorder the Data Frame by cyl first, then by descending wt. 
head(arrange(mtcars,cyl,desc(wt)))

#Question 3: Select the columns mpg and hp
select(mtcars,mpg,hp)

#Question 4: Select the distinct values of the gear column. 
distinct(select(mtcars, gear))

#Question 5: Create a new column called "Performance" which is calculated by hp divided by wt. 
mutate(mtcars, Performance = hp/wt)

#Question 6: Find the mean mpg value using dplyr.
summarise(mtcars, avg_mpg=mean(mpg,na.rm=TRUE))

#Question 7: Use pipe operators to get the mean hp value for cars with 6 cylinders. 
df <- mtcars
result <- df%>%filter(cyl==6)%>%summarise(std_hp=mean(hp))
print(result)
