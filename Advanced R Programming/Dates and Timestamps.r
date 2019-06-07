#Dates
Sys.Date()
today<-Sys.Date()
class(today)
c<- "1990-01-01"
class(c)
my.date<-as.Date(c)#Only for standard format
class(my.date)

#making input in standard date format

my.date<-as.Date("Nov-03-09",format= "%b-%d-%y")
my.date

#%d Day of month(Decimal)
#%m Month(Decimal)
#%b Month(abbreviated)
#%B Month(Full Name)
#%y Year(2 digit)
#%Y year(4 digit)


#TIME
as.POSIXct("11:02:03",format="%H:%M:%S")
strptime("11:02:03",format = "%H:%M:%S")
