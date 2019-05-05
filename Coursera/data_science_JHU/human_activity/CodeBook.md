# Cleaning the data set: Human Activity Recognition Using Smartphones

## Transformations
Data for the 10299 observations (7352 from the training data set and 2947 from the test data set) was merged from the files:
- X_train.txt
- y_train.txt
- subject_train.txt
- X_test.txt
- y_test.txt
- subject_test.txt

Only data tagged as "mean()" or "std()" in the original data was imported and merged per the assignment instructions, "Extracts only the measurements on the mean and standard deviation for each measurement."

The data was then split by [subject X activity code] and summarized by finding the mean for each [[subject X activity code] X observation type] per the assignment instructions, "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

Finally, the integer indicating the activity was replaced with a description per the assignment instructions, "Uses descriptive activity names to name the activities in the data set."

## Description of data variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

Data identifying which of the 30 subjects the measurement was from is included in the variable "subject". Its range is from 1 to 30.

Finally, all measurements were taken during one of six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. This is indicated in the variable "activity".

### Final human activity data
- "tBodyAcc.mean...X" 
- "tBodyAcc.mean...Y" 
- "tBodyAcc.mean...Z" 
- "tBodyAcc.std...X" 
- "tBodyAcc.std...Y" 
- "tBodyAcc.std...Z" 
- "tGravityAcc.mean...X" 
- "tGravityAcc.mean...Y" 
- "tGravityAcc.mean...Z" 
- "tGravityAcc.std...X" 
- "tGravityAcc.std...Y" 
- "tGravityAcc.std...Z" 
- "tBodyAccJerk.mean...X" 
- "tBodyAccJerk.mean...Y" 
- "tBodyAccJerk.mean...Z" 
- "tBodyAccJerk.std...X" 
- "tBodyAccJerk.std...Y" 
- "tBodyAccJerk.std...Z" 
- "tBodyGyro.mean...X" 
- "tBodyGyro.mean...Y" 
- "tBodyGyro.mean...Z" 
- "tBodyGyro.std...X" 
- "tBodyGyro.std...Y" 
- "tBodyGyro.std...Z" 
- "tBodyGyroJerk.mean...X" 
- "tBodyGyroJerk.mean...Y" 
- "tBodyGyroJerk.mean...Z" 
- "tBodyGyroJerk.std...X" 
- "tBodyGyroJerk.std...Y" 
- "tBodyGyroJerk.std...Z" 
- "tBodyAccMag.mean.." 
- "tBodyAccMag.std.." 
- "tGravityAccMag.mean.." 
- "tGravityAccMag.std.." 
- "tBodyAccJerkMag.mean.." 
- "tBodyAccJerkMag.std.." 
- "tBodyGyroMag.mean.." 
- "tBodyGyroMag.std.." 
- "tBodyGyroJerkMag.mean.." 
- "tBodyGyroJerkMag.std.." 
- "fBodyAcc.mean...X" 
- "fBodyAcc.mean...Y" 
- "fBodyAcc.mean...Z" 
- "fBodyAcc.std...X" 
- "fBodyAcc.std...Y" 
- "fBodyAcc.std...Z" 
- "fBodyAccJerk.mean...X" 
- "fBodyAccJerk.mean...Y" 
- "fBodyAccJerk.mean...Z" 
- "fBodyAccJerk.std...X" 
- "fBodyAccJerk.std...Y" 
- "fBodyAccJerk.std...Z" 
- "fBodyGyro.mean...X" 
- "fBodyGyro.mean...Y" 
- "fBodyGyro.mean...Z" 
- "fBodyGyro.std...X" 
- "fBodyGyro.std...Y" 
- "fBodyGyro.std...Z" 
- "fBodyAccMag.mean.." 
- "fBodyAccMag.std.." 
- "fBodyBodyAccJerkMag.mean.." 
- "fBodyBodyAccJerkMag.std.." 
- "fBodyBodyGyroMag.mean.." 
- "fBodyBodyGyroMag.std.." 
- "fBodyBodyGyroJerkMag.mean.." 
- "fBodyBodyGyroJerkMag.std.." 
- "subject" 
- "activity"

##
