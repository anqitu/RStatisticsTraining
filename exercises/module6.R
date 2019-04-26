# Conditional (If-Else)
x <- 4
y <- 4

if (x<y) {
  print("x is smaller than y")

} else {
  print("x is larger than y")
}

# Loop
# While loop
x <- 1
while (x<10) {
  print(x)
  x <- x+1
}

# For loop
for (i in c(3,8,2) ) {
  print(i)
}

for (i in 1:10) {
  if (i == 4) {next}
  print(i)
}
  
for (i in 1:10) {
    if (i == 4) {break}
    print(i)
}

# Ex: Conditional & Loop
a <- read.csv("weather.csv",header=TRUE)
b <- subset(a,select=c("Temp","Month"))
c <- subset(b,Month==5 | Month==6)
temp <- c$Temp
count <-0
for (i in temp ) {
  if (i>65) {
    count <- count +1
  }
}
length(temp[temp>65])


# Logical Operators
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)
!x
x&y
x&&y
x|y
x||y


