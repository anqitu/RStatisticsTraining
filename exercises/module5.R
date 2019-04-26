# Simple Plot
x <- 1:10
y <- x*x
plot(x,y,xlab='x',ylab='y',col='red')

x <- seq(-10,10)
y <- x^2
plot(x,y,'b',main="a parabola",xlab="x",ylab="y")

# Ex: Scatter Plot 
plot(mtcars$wt, mtcars$mpg)

plot(mtcars)
plot(mtcars[c(1,3,6)])
plot(mtcars[c('mpg','disp','wt')])

# Ex: Multiple Scatter Plot
plot(quakes[c('depth','mag','stations')])

#Boxplot
boxplot(extra~group,data=sleep)

# Ex: Boxplot
boxplot(weight~feed, data=chickwts)

#Barplot
a <-c(4,5,2,1)
barplot(a)
barplot(a,col="yellow")
barplot(a,col=c("yellow","red","blue","green"))

#Pie Chart
a <-c(4,5,2,1)
pie(a)

#Histogram
a <- rnorm(1000)
hist(a)
hist(a,breaks = c(-4,-2,0,2,4))
hist(a,breaks = c(-4,-2,2,4))
hist(a,breaks = 5)


