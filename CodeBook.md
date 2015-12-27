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
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

* 66 variables with sensor measurement data  
See the full list in the file "colnames.txt" (rows 3 to 68).
These 66 variables correspond to the subset of variables in the raw data ("UCI HAR Dataset/features.txt") whose name contains mean() or std().
For detailed descriptions of these variables see: "UCI HAR Dataset/features_info.txt".
Units:
There are four types of sensor measuremente data, as defined by the variable names:
Acc: non-dimensional factor relative to the standard gravity acceleration 'g'
Gyro: radians/sec
AccJerk: /sec
GyroJerk: radians/sec/sec
