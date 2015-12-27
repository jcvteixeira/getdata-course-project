Getting and Cleaning Data - Course Project
==========================================

Author: Joao Teixeira (jcvteixeira@gmail.com)
Date: 2015.12.27

Code Book
---------

Output data files:
* dataset-tidy.txt: file with tidy data set.
* dataset-tidy-subjectmeans.txt: file derived from the previous by taking means of each variable for each subject and each activity.

Variables:
* Subject  
Identifies the subject who performed the activity. Its range is from 1 to 30. 

* Activity  
Identifies the activity the subject was performing when the sensor measurements were taken. There are 6 activity types:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING

* 66 variables with sensor measurement data  
See the full list in the file "colnames.txt" (rows 3 to 68).  
These 66 variables correspond to the subset of variables in the raw data ("UCI HAR Dataset/features.txt") whose name contains mean() or std().  
For detailed descriptions of these variables see: "UCI HAR Dataset/features_info.txt".  
Units (there are four types of variable, defined by substrings in their names):
    * Acc: non-dimensional factor relative to the standard gravity acceleration 'g'
    * Gyro: radians/sec
    * AccJerk: /sec
    * GyroJerk: radians/sec/sec
