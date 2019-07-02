batting <- read.csv('Batting.csv')
head(batting)
str(batting)
head(batting$AB,5)
head(batting$X2B)
batting$BA <- batting$H/batting$AB
tail(batting$BA,5)
batting$X1B <- batting$H-batting$X2B-batting$X3B-batting$HR
batting$OBP <- (batting$H+batting$BB+batting$HBP)/(batting$AB+batting$BB+batting$HBP+batting$SF)
batting$SLG <- (batting$X1B+(2*batting$X2B)+(3*batting$X3B)+(4*batting$HR))/(batting$AB)
str(batting)
salaries <- read.csv("Salaries.csv")
summary(salaries)
summary(batting)
batting1 <- subset(batting, yearID>=1985)
summary(batting1)
merge1 <- merge.data.frame(batting1,salaries,by=c('playerID','yearID') )
merge1
summary(merge1)
lost_players <- c('giambja01','damonjo01','saenzol01')
lost_players1 <- subset(merge1,playerID %in% lost_players)  
subset(lost_players1, yearID==2001)
lost_players2 <-select(lost_players1, playerID, H, X2B, X3B, HR, OBP, SLG, BA, AB)
lost_players2
library(dplyr)
result <- merge1 %>%filter(yearID==2001)
library(ggplot2)
ggplot(result,aes(x=OBP,y=salary))+geom_point()
result1 <- filter(result, salary<8000000,OBP>0)
result2 <- filter(result1, AB>=500)
mean_obp <- (mean(lost_players2$OBP))/3
mean_obp
result3 <- filter(result2, OBP>mean_obp)
result3
avail.players <- result3[1:3,]
select(avail.players, playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB)
