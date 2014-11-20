# Codebook.md - Wearable Computing - Getting and Cleaning Data Course Project

## This codebook contains the following:
- The variables
- The data
- Any transformations performed to clean up the data 

## The Variables
There were 561 distinct variables in the `xtest` and `xtrain` datasets.  Of these variables only variables associated with the mean and standard deviation of values were considered.  Of the original 561 variables 81 were found to be associated with mean and standard deviation.

Once the mean or standard deviation variables were identified in the original dataset the names were expanded and standardized to make the more readable. 

#### Variable Name Standardization Criteria
The standardization process manipulates the original variable names to standardize and expand on the names to make them more readable.  The following transforms were applied as a part of this process:

Original Variable Component       | New Tidy Component
----------------------------------|-----------------------------------------------------
()                                | n/a
 -                                | .
Variables that start with t       | Time.
Variables that start with f       | Frequency.
Freq                              | Frequency.
Acc                               | Acceleration.
Mag                               | Magnitude.
GyroJerk                          | AngularAcceleration.
Gyro                              | AngularSpeed.
mean                              | .Mean
std                               | .StandardDeviation

#### Variable Name Standardization Results

Applying the standardization rules, above, to the 81 original variable names resulted in the new variables, below.

Original Variable Name            | New Tidy Variable Name
----------------------------------|-----------------------------------------------------
tBodyAcc-mean()-X                 |Time.Body.Acceleration.Mean.X                                    
tBodyAcc-mean()-Y                 |Time.Body.Acceleration.Mean.Y                                    
tBodyAcc-mean()-Z                 |Time.Body.Acceleration.Mean.Z                                    
tBodyAcc-std()-X                  |Time.Body.Acceleration.StandardDeviation.X                       
tBodyAcc-std()-Y                  |Time.Body.Acceleration.StandardDeviation.Y                       
tBodyAcc-std()-Z                  |Time.Body.Acceleration.StandardDeviation.Z                       
tGravityAcc-mean()-X              |Time.Gravity.Acceleration.Mean.X                                 
tGravityAcc-mean()-Y              |Time.Gravity.Acceleration.Mean.Y                                 
tGravityAcc-mean()-Z              |Time.Gravity.Acceleration.Mean.Z                                 
tGravityAcc-std()-X               |Time.Gravity.Acceleration.StandardDeviation.X                    
tGravityAcc-std()-Y               |Time.Gravity.Acceleration.StandardDeviation.Y                    
tGravityAcc-std()-Z               |Time.Gravity.Acceleration.StandardDeviation.Z                    
tBodyAccJerk-mean()-X             |Time.Body.AccelerationJerk.Mean.X                                
tBodyAccJerk-mean()-Y             |Time.Body.AccelerationJerk.Mean.Y                                
tBodyAccJerk-mean()-Z             |Time.Body.AccelerationJerk.Mean.Z                                
tBodyAccJerk-std()-X              |Time.Body.AccelerationJerk.StandardDeviation.X                   
tBodyAccJerk-std()-Y              |Time.Body.AccelerationJerk.StandardDeviation.Y                   
tBodyAccJerk-std()-Z              |Time.Body.AccelerationJerk.StandardDeviation.Z                   
tBodyGyro-mean()-X                |Time.Body.AngularSpeed.Mean.X                                    
tBodyGyro-mean()-Y                |Time.Body.AngularSpeed.Mean.Y                                    
tBodyGyro-mean()-Z                |Time.Body.AngularSpeed.Mean.Z                                    
tBodyGyro-std()-X                 |Time.Body.AngularSpeed.StandardDeviation.X                       
tBodyGyro-std()-Y                 |Time.Body.AngularSpeed.StandardDeviation.Y                       
tBodyGyro-std()-Z                 |Time.Body.AngularSpeed.StandardDeviation.Z                       
tBodyGyroJerk-mean()-X            |Time.Body.AngularAcceleration.Mean.X                             
tBodyGyroJerk-mean()-Y            |Time.Body.AngularAcceleration.Mean.Y                             
tBodyGyroJerk-mean()-Z            |Time.Body.AngularAcceleration.Mean.Z                             
tBodyGyroJerk-std()-X             |Time.Body.AngularAcceleration.StandardDeviation.X                
tBodyGyroJerk-std()-Y             |Time.Body.AngularAcceleration.StandardDeviation.Y                
tBodyGyroJerk-std()-Z             |Time.Body.AngularAcceleration.StandardDeviation.Z                
tBodyAccMag-mean()                |Time.Body.Acceleration.Magnitude.Mean                            
tBodyAccMag-std()                 |Time.Body.Acceleration.Magnitude.StandardDeviation               
tGravityAccMag-mean()             |Time.Gravity.Acceleration.Magnitude.Mean                         
tGravityAccMag-std()              |Time.Gravity.Acceleration.Magnitude.StandardDeviation            
tBodyAccJerkMag-mean()            |Time.Body.AccelerationJerk.Magnitude.Mean                        
tBodyAccJerkMag-std()             |Time.Body.AccelerationJerk.Magnitude.StandardDeviation           
tBodyGyroMag-mean()               |Time.Body.AngularSpeed.Magnitude.Mean                            
tBodyGyroMag-std()                |Time.Body.AngularSpeed.Magnitude.StandardDeviation               
tBodyGyroJerkMag-mean()           |Time.Body.AngularAcceleration.Magnitude.Mean                     
tBodyGyroJerkMag-std()            |Time.Body.AngularAcceleration.Magnitude.StandardDeviation        
fBodyAcc-mean()-X                 |Frequency.Body.Acceleration.Mean.X                               
fBodyAcc-mean()-Y                 |Frequency.Body.Acceleration.Mean.Y                               
fBodyAcc-mean()-Z                 |Frequency.Body.Acceleration.Mean.Z                               
fBodyAcc-std()-X                  |Frequency.Body.Acceleration.StandardDeviation.X                  
fBodyAcc-std()-Y                  |Frequency.Body.Acceleration.StandardDeviation.Y                  
fBodyAcc-std()-Z                  |Frequency.Body.Acceleration.StandardDeviation.Z                  
fBodyAcc-meanFreq()-X             |Frequency.Body.Acceleration.Mean.FrequencyX                      
fBodyAcc-meanFreq()-Y             |Frequency.Body.Acceleration.Mean.FrequencyY                      
fBodyAcc-meanFreq()-Z             |Frequency.Body.Acceleration.Mean.FrequencyZ                      
fBodyAccJerk-mean()-X             |Frequency.Body.AccelerationJerk.Mean.X                           
fBodyAccJerk-mean()-Y             |Frequency.Body.AccelerationJerk.Mean.Y                           
fBodyAccJerk-mean()-Z             |Frequency.Body.AccelerationJerk.Mean.Z                           
fBodyAccJerk-std()-X              |Frequency.Body.AccelerationJerk.StandardDeviation.X              
fBodyAccJerk-std()-Y              |Frequency.Body.AccelerationJerk.StandardDeviation.Y              
fBodyAccJerk-std()-Z              |Frequency.Body.AccelerationJerk.StandardDeviation.Z              
fBodyAccJerk-meanFreq()-X         |Frequency.Body.AccelerationJerk.Mean.FrequencyX                  
fBodyAccJerk-meanFreq()-Y         |Frequency.Body.AccelerationJerk.Mean.FrequencyY                  
fBodyAccJerk-meanFreq()-Z         |Frequency.Body.AccelerationJerk.Mean.FrequencyZ                  
fBodyGyro-mean()-X                |Frequency.Body.AngularSpeed.Mean.X                               
fBodyGyro-mean()-Y                |Frequency.Body.AngularSpeed.Mean.Y                               
fBodyGyro-mean()-Z                |Frequency.Body.AngularSpeed.Mean.Z                               
fBodyGyro-std()-X                 |Frequency.Body.AngularSpeed.StandardDeviation.X                  
fBodyGyro-std()-Y                 |Frequency.Body.AngularSpeed.StandardDeviation.Y                  
fBodyGyro-std()-Z                 |Frequency.Body.AngularSpeed.StandardDeviation.Z                  
fBodyGyro-meanFreq()-X            |Frequency.Body.AngularSpeed.Mean.FrequencyX                      
fBodyGyro-meanFreq()-Y            |Frequency.Body.AngularSpeed.Mean.FrequencyY                      
fBodyGyro-meanFreq()-Z            |Frequency.Body.AngularSpeed.Mean.FrequencyZ                      
fBodyAccMag-mean()                |Frequency.Body.Acceleration.Magnitude.Mean                       
fBodyAccMag-std()                 |Frequency.Body.Acceleration.Magnitude.StandardDeviation          
fBodyAccMag-meanFreq()            |Frequency.Body.Acceleration.Magnitude.Mean.Frequency             
fBodyBodyAccJerkMag-mean()        |Frequency.BodyBody.AccelerationJerk.Magnitude.Mean               
fBodyBodyAccJerkMag-std()         |Frequency.BodyBody.AccelerationJerk.Magnitude.StandardDeviation  
fBodyBodyAccJerkMag-meanFreq()    |Frequency.BodyBody.AccelerationJerk.Magnitude.Mean.Frequency     
fBodyBodyGyroMag-mean()           |Frequency.BodyBody.AngularSpeed.Magnitude.Mean                   
fBodyBodyGyroMag-std()            |Frequency.BodyBody.AngularSpeed.Magnitude.StandardDeviation      
fBodyBodyGyroMag-meanFreq()       |Frequency.BodyBody.AngularSpeed.Magnitude.Mean.Frequency         
fBodyBodyGyroJerkMag-mean()       |Frequency.BodyBody.AngularAcceleration.Magnitude.Mean            
fBodyBodyGyroJerkMag-std()        |Frequency.BodyBody.AngularAcceleration.Magnitude.StandardDeviation
fBodyBodyGyroJerkMag-meanFreq()   |Frequency.BodyBody.AngularAcceleration.Magnitude.Mean.Frequency


## The Data

Based on information from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones the data in this dataset can be described as follows:

> Data Set Information:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

>Attribute Information:

>For each record in the dataset it is provided: 
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment. 

## The Transforms

Transformations applied to the test and train datasets were as follows:

- Column Labels were applied to the test and train datasets
- SubjectID and ActivityID columns were appended to each dataset
- ActivityID columns were joined to the ActivityID in the ActivityName reference data to populate an ActivityName column in each dataset
- After the ActivityName column was populated in both datasets the ActivityID column was dropped from both datasets
- Lastly, the test and train datasets were combined into a single large dataset

####Output
After transformations were applied the output dataset was summarized based on the criteria set forth in the project instructions, namely:

>Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

So, the mean of each of the variables, above, was taken across all observations for each subject-activity pair, resulting in a total of 180 observations.
