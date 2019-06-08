#install.packages('dplyr')
#install.packages('nycflights13')
library(dplyr)
library(nycflights13)
head(flights)
summary(flights)

#filter() and slice()
head(filter(flights,month == 11, day==3,carrier=='AA'))#FILTER SELECTS A SUBSET FROM THE CONDITIONS SPECIFIED
slice(flights, 1:10)#Select rows by slicing

#arrange()
head(arrange(flights, year,month,day,dep_time))#Orders by columns specified
#To arrange in descending order, use desc(column_name)

#select() and rename()

head(select(flights,carrier))#Allows us to select or display only those columns that are useful to us
head(select(flights,carrier,arr_time))

head(rename(flights,airline_carrier=carrier))#Renames columns

#distinct()
distinct(select(flights,carrier))
#Distinct only shows different/unique values of columns

#mutate()

head(mutate(flights, newcol = arr_delay-dep_delay))#Add new columns which could be functions of existing column values
head(transmute(flights, newcol = arr_delay-dep_delay))#Shows values of only new column

#summarise()

summarise(flights, av_airtime=mean(air_time,na.rm = TRUE))#na.rm is part of mean function which will remove mean values if there are any in the column specified
#Aggregate function which aggregates a column or columns and gives output of 1 row

#sample_n() and sample_frac()

sample_n(flights,10)
#Random sample of 10 rows

sample_frac(flights,.1)
#Gives percentage of output
