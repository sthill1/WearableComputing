# Getting and Cleaning Data

## Wearable Computing Project

The result of this project was an R program, run_analysis.R, that does the following. 
--1.	Merges the training and the test sets to create one data set.
--2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
--3.	Uses descriptive activity names to name the activities in the data set
--4.	Appropriately labels the data set with descriptive variable names. 
--5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


### Program Execution

In order to run the R program, run_analysis.R, please see the included CodeBook.md for additional information on how to setup and execute the program. 

### Files

The dataset should be extracted to a `UCI HAR Dataset/` directory.

The `CodeBook.md` describes the program and work performed within. 

The `run_analysis.R` is the script that runs this analysis.

The result of the execution are two files as follows:

- `sensor.txt` - stores a full version of the tidy dataset
- `sensor_avg_by_act_sub.txt` - stores a summarized version of the tidy dataset which includes the mean of each column by activity and subject.


## Dependencies

run_analysis.R requires plyr and data.table to be installed prior to executing. 

