days <- c('Mon','Tue','Wed','Thu',"Fri")
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
data.frame(days,temp,rain)
df<-data.frame(days,temp,rain)
df

#INDEXING AND SLICING
df[1,]#ALL COLUMNS FROM FIRST ROW
df[,1]#LEVELS WILL BE INCLUDED

#Indexing using names
df[,'rain']#returns all values of rain column
df[1:5,c('days','temp')]
df$days#Return column values in vector format
df['days']#returns values in df format

#Subset
subset(df, subset = rain==T)#subset uses conditional operators
subset(df, subset = temp>23)

#Order
sorted.temp<- order(df['temp'])
sorted.temp#Returns indexes which contain sorted values
df[sorted.temp,]#sorts df by using sorted temp values
desc.temp <-order((-df['temp']))#Returns values in descending order
df[desc.temp,]
desc.temp<-order(-df$temp)
df[desc.temp,]