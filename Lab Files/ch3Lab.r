library(MASS)
library(ISLR)
library(ggplot2)

p4 <- ggplot(Credit) + geom_boxplot(aes(x = Gender, y = Balance))
p4
p5 <- ggplot(Credit) + geom_boxplot(aes(x = Ethnicity, y = Balance))
p5

FitL3 <- lm(Balance ~ Gender, data = Credit)
summary(FitL3)

FitL3a <- lm(Balance ~ Ethnicity, data = Credit)
summary(FitL3a)


fix(Carseats)
names(Carseats)
lm.fit <- lm(Sales ~ . + Income:Advertising + Price:Age, data = Carseats)
summary(lm.fit)
attach(Carseats)
contrasts(ShelveLoc)
