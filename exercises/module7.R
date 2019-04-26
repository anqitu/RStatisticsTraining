y <- function(x) {
  x*x
}

y(2)


filter <- function(x) {
  x[x>0]
}

filter(-10:10)

# Default Argument
f <- function(x=3,y=4) {
  x*2+y*3
}

f()

# Named Argument
f <- function(x,y) {
  x*x+y*y*y
}
f(x=3,y=2)
f(x=2,y=3)

f <- function(x,y,...) {
  plot(x,y,...)
}
f(1:10,1:10,col="red")

roll <- function() {
  dice<-sample(1:6,2)
  sum(dice)
}
roll()
