Getting and Cleaning Data - Course Project
==========================================

Author: Joao Teixeira (jcvteixeira@gmail.com)
Date: 2015.12.27

run_analysis.R
--------------
This script prepares a tidy data set, according to the course project definition:
https://class.coursera.org/getdata-035/human_grading/view/courses/975119/assessments/3/submissions

Input:  
Raw data sets downloaded from the course project page (link above) and stored in text files inside a folder called "UCI HAR Dataset".

Output:
* dataset-tidy.txt: file with tidy data set.
* dataset-tidy-subjectmeans.txt: file derived from the previous by taking means of each variable for each subject.
* colnames.txt: text file with the list of variable names in the files above.

Required non-default packages (will be installed automatically):
* reshape2

