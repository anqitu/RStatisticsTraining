# Module 2
# Numbers
a <- 3
str(a)
2^4
abs(-3.2)
round(3.4)
round(5.26896, digits=2)
floor(5.5)
ceiling(5.5)
sqrt(4)
sin(pi/2)
factorial(4)
3/0
Inf/Inf

# Text
a <- 'today we are learing R, awesome'
strsplit(a," ")
strsplit(a,",")
a <- "abc@dec.com"
b <- strsplit(a,"@")
a <- "abc"
b <- "dec.com"
paste(a,b,sep="@")

# Vector
# Method 1: Colon Operator
a <- 0:10
a <- 10:-4
a
class(a)
str(a)

# Method 2: Concat Operator 
a <- c(3,8,9:12,'red')
a

# Method 3: Seq Operator
a <- seq(10)
a <- seq(from=1,to=10,by=2)
a <- seq(1,20,length.out=100)
a

x <- seq(0,4*pi,length.out=200)
y <- sin(x)
plot(x,y)

# Method 4: Rep Operator

rep(3,10)
rep(1:3,5)
rep(c('red','green','blue'),times=2)
rep(c('red','green','blue'),length.out=2)
rep(c('red','green','blue'),each=2)

# Access elements in vector
a <- 1:10
a[5]
a[5:8]
a[5:3]
a[-2]
a
a[-1:-4]
a[ c(5, 6, 7, 8) ]

# a <- c(4,5,7,3,2)
# b <- rep(a,10)
# b
# seq(1,length(b),3)
# b[seq(1,length(b),3)]


a <- c(4,5,-1,-6,4,2,9,-3)
a>0
sum(a[a>0])

# Find the sum of values above 4
sum(a[a>4])

# Find the sum excluding 4 and -3
sum(a[a!=4 & a!=-3])

# Dropping NA values
a<-c(1:5,rep(NA,3),6:10)
a
a[!is.na(a)]

# Statistical Functions for Vector
a = c(4,5,-1,-6,4,2,9,-3)
mean(a)
median(a)
sum(a)
prod(a)
min(a)
max(a)
cummin(a)
cummax(a)
cumsum(a)
cumprod(a)
diff(a)
sort(a, decreasing=TRUE)

# Ex: Logical Indexing
a <-c(seq(1,10,3),rep(NA,3),seq(10,2,-2))
a
a <- a[!is.na(a)]
a
sum(a[a>5])

# Vector Arithmetic
a <- c(1,2,3)
b <- c(3,2,1)
a+b
a-b
a*b
a/b

# Matrix
matrix(1:12,ncol=4)
matrix(1:12, ncol=4,byrow=TRUE)
matrix(1:12,nrow=4)
matrix(1:12, nrow=4,byrow=TRUE)
matrix(c(3, 9, -1, 4, 2, 6), nrow=2)


a <-c(1,1,1,1)
b <-c(2,2,2,2)
rbind(a,b)
cbind(a,b)

a <- matrix(1:12,ncol=4)
a
a[1,3]
a[2,]
a[,3]
a[1:2,3:4]
a[1:2,c(2,4)]

# Ex: Access Matrix Elements
a <- matrix(1:20,ncol=4)
a[c(3,5),c(2,4)]


# Array
a <- array(1:100,dim=c(2,2,3,3))
a
c <- array(rep(c(3,4,5),4),dim=c(2,2,3))
c

# Data Frame
df <- data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  age =c(42,38,26),
  row.names=c('Ally','Belinda','Alfred')
)
df
rownames(df)
colnames(df)
nrow(df)
col(df)

# Accessing values in data frame

# $ operator
df$gender

# [[ ]] operator
df[["gender"]]
df[[1]]

# [ ] operator
df[c("gender","height")]
df[2,]
df[2,2]
df[2,"height"]

# Subset
b <- subset(df,select=c("gender","height"))
b

# Ex: Data Frame
data(mtcars)
cars <- mtcars
cars
cars_subset <- subset(cars,select=c("mpg","am","wt"))
cars_subset

# Tail and Head
df = data.frame(a=1:10,b=11:20,c=21:30)
tail(df)
tail(df,n=3)
tail(df,3)
head(df)
head(df,n=3)
head(df,3)

# Ex: Tail and Head
head(cars)
tail(cars, 10)

# Filter Data Frame
df[df$a=="8",]

# Ex: Filter
cars[cars$mpg>15 & cars$am==1, ]

# Filter Data using subset
subset(df, select = c(a, b))
subset(df, subset = a > 3, select = c(a, b))

# Ex: Subset
subset(cars, subset = am == 1, select = c('am', 'mpg'))

# Summary
summary(df)

# Ex: Summary
summary(subset(cars, select = c('am', 'mpg')))


# Add Column to Data Frame
df <- data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  age =c(42,38,26),
  row.names=c('Ally','Belinda','Alfred')
)
df$name =c('Ally','Belinda','Jane')

df2 <- data.frame(
  gender = c("Female", "Male","Female"), 
  height = c(155, 171.5, 155), 
  weight = c(71,93, 68),
  age =c(42,38,26),
  row.names =c('SC','Alfred','TC')
)

df3 <- rbind(df,df2)

# List
a<-list(1:10, 11:20,3.14159,"Hello" )

# a <-data.frame(
#   name = c('Ally','Belinda','Jane'),
#   height = c(165,155,160),
#   age = c(42,38,26),
#   row.names = c('P1','P2','P3')
# )
# d <- list(1:10,a,c(3,5,5),matrix(1:20,ncol=4))

# Factor
a<-c("red","red","green","blue")
factor(a)



