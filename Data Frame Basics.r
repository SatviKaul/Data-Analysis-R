state.x77
USPersonalExpenditure
women

#GIVES ALL DATA SETS IN R
data()
WorldPhones

#BUILT IN FUNCTIONS
head(state.x77)#GIVES FIRST 6 ROWS
tail(state.x77)#GIVES LAST 6 ROWS
str(state.x77)#gives structure
summary(state.x77)#gives summary of dataframe

#Creating a dataframe
days <- c('Mon','Tue','Wed','Thu',"Fri")
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
data.frame(days,temp,rain)
df<-data.frame(days,temp,rain)
df
str(df)
summary(df)
