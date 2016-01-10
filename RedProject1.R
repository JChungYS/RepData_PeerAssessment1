###Read data from file: activity

rawDAct <- read.csv("activity.csv")


DAct <- na.omit(rawDAct) ### remove NA data
### Total Steps of Actvity

StepsDayAvg <-aggregate(DAct$steps, list(day = DAct$date),mean)

print(StepsDayAvg)

### Plot histogram of steps-day

StepsDaySum <-aggregate(DAct$steps, list(day = DAct$date),sum)
hist(StepsDayAvg$x, main = "Histogram of Total Steps per day", xlab = "Steps per day")

### Need Title, legend, etc




