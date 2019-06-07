animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)
factor(animal)
fact.ani <- factor(animal)
#nominal - no order
#ordinal - ordered
ord.cat <- c('cold','med','hot')
#Ordering
temps <- c('cold','med','hot', 'hot', 'hot', 'cold', 'med')
temps
ftemp <-factor(temps, ordered = T, levels = c('cold','med','hot'))
ftemp
summary(ftemp)
summary(temps)
