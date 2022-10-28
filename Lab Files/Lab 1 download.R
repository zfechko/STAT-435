 # Chapter 2 Lab: Introduction to R

# Basic Commands

x <- c(1,3,2,5) #assign a vector to x through concatenation
x # print x
x = c(1,6,2) #modify x
x #print x
y = c(1,4,3) #assign a list to y
y
length(x) #print length of the vectors
length(y)
x+y #print the sum of the two vectors
ls() #prints name of objects in specified environment
rm(x,y)#remove x and y
ls()
rm(list=ls())
?matrix #help command
x=matrix(data=c(1,2,3,4), nrow=2, ncol=2) #creates a 2x2 matrix
x
x=matrix(c(1,2,3,4),2,2)
matrix(c(1,2,3,4),2,2,byrow=TRUE) #creates a matrix that is filled by row compared to by column
sqrt(x) #performs a square root operation on every item in the matrix
x^2 #squares every item in the matrix
x=rnorm(50)#normal distribution of n=50 with random deviates
y=x+rnorm(50,mean=50,sd=.1)
cor(x,y) #finds the correlation between two distributions
set.seed(1303) #sets the seed which random values are derived from
rnorm(50) #creates random normal distribution of n=50
set.seed(3)
y=rnorm(100)
mean(y) #expected value
var(y) #variance
sqrt(var(y))#these are both ways to find the standard deviation of a distribution
sd(y)

# Graphics

x=rnorm(100)
y=rnorm(100)
plot(x,y)
plot(x,y,xlab="this is the x-axis",ylab="this is the y-axis",main="Plot of X vs Y")
pdf("Figure.pdf")
plot(x,y,col="green")
dev.off()
x=seq(1,10) #creates a vector with values from 1-10, both do the same thing but are written differnet way
x
x=1:10
x
x=seq(-pi,pi,length=50)
y=x
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f) #create a contour plot
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)
image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa,theta=30)
persp(x,y,fa,theta=30,phi=20)
persp(x,y,fa,theta=30,phi=70)
persp(x,y,fa,theta=30,phi=40)

# Indexing Data

A=matrix(1:16,4,4)
A
A[2,3] #prints item in row 2, column 3, which is 10
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]
dim(A) #prints the dimension of the matrix

# Loading Data

Auto=read.table("Lab Files/Auto.csv")
fix(Auto)
Auto=read.table("Lab Files/Auto.csv",header=T,na.strings="?")
fix(Auto)
Auto=read.csv("Lab Files/Auto.csv",header=T,na.strings="?")
fix(Auto)
dim(Auto)
Auto[1:4,]
Auto=na.omit(Auto)
dim(Auto)
names(Auto) #prints the names of the variables

# Additional Graphical and Numerical Summaries

plot(cylinders, mpg)
plot(Auto$cylinders, Auto$mpg)
attach(Auto)
plot(cylinders, mpg)
cylinders=as.factor(cylinders)
plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T)
plot(cylinders, mpg, col="red", varwidth=T,horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders", ylab="MPG")
hist(mpg)
hist(mpg,col=2)
hist(mpg,col=2,breaks=15)
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)
plot(horsepower,mpg)
identify(horsepower,mpg,name)
summary(Auto)
summary(mpg)

