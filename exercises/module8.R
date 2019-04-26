# Descriptive Statistics
data <- c(3,NA,4,6,NA,10,2)
mean(data)
mean(data,na.rm = TRUE)
mean(data,trim=0.2,na.rm = TRUE)
summary(data)

#Correlation
data <- mtcars[,c(1,3,6)]
cor(data$mpg,data$wt)
round(cor(data),2)

# Ex: Correlation
round(cor(quakes),2)


# Fitting linear model
plot(mtcars$wt, mtcars$mpg)
m <- lm(mpg ~ wt, data = mtcars)

# Intercept and Slope
coef(m)
summary(m)

# Prediction
predict(m)
predict(m, newdata = data.frame(wt = 3))

plot(mpg~wt,data=mtcars)
abline(m, col = 'red')

# Ex: Linear Regression
x <- quakes$stations
y <- quakes$mag
plot(x,y)

m <- lm(y~x)
abline(m, col = 'red')
predict(m,data.frame(x=100))

# Multiple Regression
round(cor(mtcars), 2)
m <- lm(mpg~wt+hp,data=mtcars)
predict(m,data.frame(wt=3,hp=200))

# MR with Interaction 
m <- lm(mpg ~ wt*hp, data = mtcars)
summary(m)
predict(m, data.frame(wt = 3, hp = 200))


# Hypothesis Testing
boxplot(extra~group,data=sleep)

# t-Test (2 Sided) 
t.test(extra~group,data=sleep)

# t-Test (One Sided) 
t.test(extra~group,data=sleep,alternative="less")

# Challenge: t-Test 
boxplot(weight~feed,data=chickwts)
d <- subset(chickwts,feed == "casein" | feed =="horsebean")
t.test(weight~feed,data=d)

# ANOVA
m <- aov(weight~feed,data=chickwts)
summary(m)

m <- lm(weight~feed,data=chickwts)      
summary(m)

# Ex: ANOVA 
teaching <- data.frame(
  method = rep(c('A','B','C'),each=4),
  score = c(79,86,94,89,71,77,81,83,82,68,70,76)
)
boxplot(score~method,data=teaching)
m <- aov(score~method,data=teaching)
summary(m)