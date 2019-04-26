install.packages("ggplot2")
library("ggplot2")
# detach("package:ggplot2",unload=TRUE)
# remove.packages("ggplot2")

data(mtcars)
summary(mtcars)
mtcars$mpg
mtcars[["mpg"]]
mtcars[1,"gear"] = 3
plot(mtcars)

data(quakes)
summary(quakes)
plot(quakes)

data(sleep)
summary(sleep)
boxplot(sleep$extra~sleep$group)

data(chickwts)
boxplot(chickwts$weight~chickwts$feed)

# Ex: R Script
quake.subset <- subset(quakes, subset = mag>5)
mean(quake.subset$stations)

