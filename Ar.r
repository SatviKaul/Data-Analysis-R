college <- read.csv("College.csv")
head(college)
fix(college)
rownames(college) <- college[,1]
fix(college)#View dataset in a window
college=college[,-1]
fix(college)
summary(college)
college1 <- college[1:10,1:5]
college1
pairs(college1)
