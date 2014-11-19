# Introduction

This program, run_analysis.R will tranform data from the Wearable Computing project utilizing the following steps:
 
- Utilizes data downloaded from `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`
- loads test and training data
- applies column labels from features.txt file
- keeps only data columns that have mean() or std() in the name 
- replaces activity values with activity names
- replaces column label abbreviations with descriptive names
- creates a second, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
# run_analysis.R

The script requires the `plyr` library to be installed prior to execution.  

Prior to running the script the user will need to download and extract the zip file above. 
In addition, prior to execution the user needs to set the location of the working directory for the script to find the data files. 

# The original data set

The original data set is split into training (`X_train.txt`, `Y_train.txt`) and test (`X_test.txt`, `Y_test.txt`) sets that include:
- measurements from the accelerometer and gyroscope
- Numeric activity id
- Numeric subject id

In addition, datasets have been provided for activity labels (`activity_labels.txt`) and column descriptions (`features.txt`).  

# Getting and cleaning data

The first step in the script is to load all of the training, test, column description and activity names.  

Once the data are loaded column labels are applied to the test and training data a new variable is created that holds only data associated with mean and standard deviation data. 

Next the subject and activity columns are appended to the test and training data and column labels are applied. 

The test and train datasets are merged.

Activity IDs are replaced with Activity Names and the Activity ID is removed from the dataset.

Next the data labels are fixed removing parentheses, expanding abbreviations, etc. making them more readable.  

A complete dataset of tidy data is exported to `sensor.txt`.

Lastly a dataset summarized by the mean of each value based on Activity Name and SubjectID is created and the dataset is exported to `sensor_avg_by_act_sub.txt` with the first row containing the column labels.   

