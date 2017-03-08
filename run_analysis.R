

setwd("C:/Users/Hugo/Desktop/Coursera/Getting_Cleaning/week4/")


download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile = "Data.zip")
unzip("Data.zip", files = "Data", list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = ".", unzip = "internal",
      setTimes = FALSE)



install.packages(plyr)
library(plyr)



#Let's read the table dude 
setwd("C:/Users/Hugo/Desktop/Coursera/Getting_Cleaning/week4/train/")
x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
setwd("C:/Users/Hugo/Desktop/Coursera/Getting_Cleaning/week4/test/")
x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
setwd("C:/Users/Hugo/Desktop/Coursera/Getting_Cleaning/week4/")
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")



# let's merge the data set now...
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)



# mean and std ? .... Mhok....
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

#let's name all the things !!!!
x_data <- x_data[, mean_and_std_features]
names(x_data) <- features[mean_and_std_features, 2]

y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

names(subject_data) <- "subject"

# Merge all the things vol.2
all_data <- cbind(x_data, y_data, subject_data)



# Transforming the all_dat to get the result !
result <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(result, "result.txt", row.name=FALSE)
