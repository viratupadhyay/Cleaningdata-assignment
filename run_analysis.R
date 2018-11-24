## First step: Set working directory to the file location
setwd(dir = "./Data Science/3. Getting and Cleaning Data/week4/UCI HAR Dataset")

## Second step: Load the package "reshape2"
library(reshape2)

## Third step: Read data files using read.table into separate data frames
Xtrain <- read.table("./X_train.txt")
Xtest <- read.table("./X_test.txt")
Ytrain <- read.table("./y_train.txt")
Ytest <- read.table("./y_test.txt")
sub_train <- read.table("./subject_train.txt")
sub_test <- read.table("./subject_test.txt")

## Fourth step: Add column names for new variables:
## i.e. subject IDs, measurement names and label numbers

## Read subject files for both train   
## and test data and add column name for subject files
names(sub_train) <- "subjectID"
names(sub_test) <- "subjectID"

## Read features.txt and add another
## column names for measurement files
features <- read.table("./features.txt")
names(Xtrain) <- features$V2
names(Xtest) <- features$V2

## Add column name for label names indicating
## the type of activity performed
names(Ytrain) <- "Activity"
names(Ytest) <- "Activity"

## combine files into one dataset
traindata <- cbind(sub_train, Ytrain, Xtrain)
testdata <- cbind(sub_test, Ytest, Xtest)
combinedata <- rbind(traindata, testdata)

## Fifth step: The mean and stddev are calculated for each measurement.

## Detect the columns containing "mean()" or "std()" using grepl()
AvgStd <- grepl("mean\\(\\)", names(combinedata)) |
    grepl("std\\(\\)", names(combinedata))

# Make sure subjectID and Activity columns aren't deleted
AvgStd[1:2] <- TRUE

# Discard rest of the redundant columns
combinedata <- combinedata[, AvgStd]

## Sixth step: Uses descriptive activity names to name the activities
## in the data set.
## STEP 4: Appropriately labels the data set with descriptive
## activity names. 

# convert the activity column from integer to factor
combinedata$Activity <- factor(combinedata$Activity, labels=c("Walking",
                                                        "Walking Upstairs", 
                                                        "Walking Downstairs", 
                                                        "Sitting", 
                                                        "Standing", 
                                                        "Laying"))


## STEP 5: Creates a second, independent tidy data set with the
## average of each variable for each activity and each subject.

# Create a tidy data set using melt and dcast
meltedata <- melt(combinedata, id=c("subjectID","Activity"))
tidydata <- dcast(meltedata, subjectID+Activity ~ variable, mean)

# Write the tidy data set to a file
write.csv(tidydata, "./tidydata.txt", row.names=FALSE)
