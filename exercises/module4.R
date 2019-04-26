getwd()
setwd('/Users/anqitu/Workspaces/Tertiary-Courses/RStatisticsTraining/exercises')
a <- read.csv("weather.csv",header=TRUE)
View(a)

url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
a <- read.csv(url, nrows=5, header = FALSE)
a

# Ex: Read CSV
df <- read.csv("weather.csv",header=TRUE)
df
summary(df)
subset <- df[df$Month == 6, ]
mean(subset$Temp)

# Import Data in RStudio
weather <- read.csv("~/Workspaces/Tertiary-Courses/RStatisticsTraining/exercises/weather.csv")

# Write CSV File
write.csv(subset,"subset.csv")
