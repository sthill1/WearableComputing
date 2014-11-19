
######################################################################################################################
# run_analysis.R
# Wearable Computing Project
#
# This script performs the following:
#
# 1.    Merges the training and the test sets to create one data set.
# 2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.	Uses descriptive activity names to name the activities in the data set
# 4.	Appropriately labels the data set with descriptive variable names. 
# 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
#       each activity and each subject.
#
######################################################################################################################

## Load the plyr module
require(plyr)

## Set the current working directory and load test data
setwd("C:\\Users\\Steven\\Desktop\\Data Science\\Getting and Cleansing Data\\projects\\data\\UCI HAR Dataset\\test")
xtest    <- read.csv("X_test.txt", header=F, sep="")
ytest    <- read.csv("Y_test.txt", header=F, sep="")
subjtest <- read.csv("subject_test.txt", header=F, sep="")

## Set the current working directory and load training data
setwd("C:\\Users\\Steven\\Desktop\\Data Science\\Getting and Cleansing Data\\projects\\data\\UCI HAR Dataset\\train")

xtrain    <- read.csv("X_train.txt", header=F, sep="")
ytrain    <- read.csv("Y_train.txt", header=F, sep="")
subjtrain <- read.csv("subject_train.txt", header=F, sep="")

## Set the current working directory and load column and activity label data
setwd("C:\\Users\\Steven\\Desktop\\Data Science\\Getting and Cleansing Data\\projects\\data\\UCI HAR Dataset")
collabels <- read.csv("features.txt", header=F, sep="")
actlabels <- read.csv("activity_labels.txt", header=F, sep="")

## Add column lables to the activity lables reference data
colnames(actlabels)[1] <- "ActivityId"
colnames(actlabels)[2] <- "ActivityName"

##  Add column lables to the test and train data sets
colnames(xtest)  <- collabels$V2
colnames(xtrain) <- collabels$V2

## Filter out columns that have mean() or std() in the name
xtestsub  <- xtest[c(grep("mean|std",collabels$V2))]
xtrainsub <- xtrain[c(grep("mean|std",collabels$V2))]

## Add Subject and Activity columns to the train and test datasets
testdata  <- cbind(cbind(subjtest, ytest), xtestsub)
traindata <- cbind(cbind(subjtrain, ytrain), xtrainsub)

## Add labels to the Subject and Activity columns we just added
colnames(testdata)[1]  <- "Subject"
colnames(testdata)[2]  <- "ActivityId"
colnames(traindata)[1] <- "Subject"
colnames(traindata)[2] <- "ActivityId"

## concatenate the test and training data
all_data <- rbind(testdata, traindata)

## merge lable data with all_data based on ActivityID
fix_activity <- merge(actlabels, all_data, actlabels.x="ActivtyID", all_data.x="ActivityID")

## Truncate the first columnn(ActivityID) off the result.
fix_activity <- fix_activity[,-1]


## Remove parentheses
names(fix_activity) <- gsub('\\(|\\)',"",names(fix_activity), perl = TRUE)

## Make valid names, change dashes to dots
names(fix_activity) <- make.names(names(fix_activity))

## Add the full Time & Frequency names if datasets start with t or f
names(fix_activity) <- gsub('^t',"Time",names(fix_activity))
names(fix_activity) <- gsub('^f',"Frequency",names(fix_activity))

## Expand full names based on abbreviations
names(fix_activity) <- gsub('Freq\\.',"Frequency.",names(fix_activity))
names(fix_activity) <- gsub('Freq$',"Frequency.",names(fix_activity))
names(fix_activity) <- gsub('Acc',"Acceleration.",names(fix_activity))
names(fix_activity) <- gsub('Mag',"Magnitude.",names(fix_activity))
names(fix_activity) <- gsub('GyroJerk',"AngularAcceleration.",names(fix_activity))
names(fix_activity) <- gsub('Gyro',"AngularSpeed.",names(fix_activity))

## Capitalize Mean and expand StandardDeviation
names(fix_activity) <- gsub('\\.mean',".Mean",names(fix_activity))
names(fix_activity) <- gsub('\\.std',".StandardDeviation",names(fix_activity))

## Create an full tidy data set
write.table(fix_activity, file = "sensor.txt", row.names=FALSE)

## Create an independent tidy data set with the average of each variable by activity and subject.
fix_activity_sub = ddply(fix_activity, c("ActivityName","Subject"), numcolwise(mean))
write.table(fix_activity_sub, file = "sensor_avg_by_act_sub.txt", row.names=FALSE)



