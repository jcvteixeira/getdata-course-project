# Getting and Cleaning Data
# Course Project
# 2015.12.27

# Input:
#   UCI HAR Dataset/*
# Output:
#   dataset-tidy.txt
#   dataset-tidy-subjectmeans.txt

# Required non-default packages (will be installed automatically):
#   reshape2

# Steps from the Course Project assignment:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.


# Input raw data
tab_a1=read.table("UCI HAR Dataset/train/subject_train.txt")
tab_a2=read.table("UCI HAR Dataset/train/y_train.txt")
tab_a3=read.table("UCI HAR Dataset/train/X_train.txt",colClasses = "numeric")
tab_b1=read.table("UCI HAR Dataset/test/subject_test.txt")
tab_b2=read.table("UCI HAR Dataset/test/y_test.txt")
tab_b3=read.table("UCI HAR Dataset/test/X_test.txt",colClasses = "numeric")

features = read.table("UCI HAR Dataset/features.txt")
activities = read.table("UCI HAR Dataset/activity_labels.txt")

# Create a filter (logical vector) for variables whose name constains mean() or std()
# (Corresponds to Step 2)
feat_filter = grepl("mean\\(|std\\(",features$V2)

# Merge the training and test sets
# (Corresponds to Step 1)
df_a=cbind(tab_a1,tab_a2,tab_a3[,feat_filter])
df_b=cbind(tab_b1,tab_b2,tab_b3[,feat_filter])
df=rbind(df_a,df_b)

# Assign descriptive variable names
# (Corresponds to Step 4)
feat_colnames=as.character(features$V2[feat_filter])
colnames(df)=c("Subject","Activity",feat_colnames)

# Create a text file with the list of column (variable) names
write.table(colnames(df),file="colnames.txt",quote=FALSE,col.names=FALSE)

# Use a factor to assign descriptive activity names
# (Corresponds to Step 3)
df$Activity=factor(df$Activity,levels=activities$V1,labels=activities$V2)

# Create a new data set with averages of each variable for each activity and each subject
# (Corresponds to Step 5)
if (!("reshape2" %in% installed.packages())) {
  install.packages("reshape2")
}
library(reshape2)
dfMelt=melt(df,id=c("Subject","Activity"),measure.vars=feat_colnames)
dfCast=dcast(dfMelt,Subject + Activity ~ variable,mean)

# Output tidy data
write.table(df,file="dataset-tidy.txt",quote=FALSE,row.names=FALSE)
write.table(dfCast,file="dataset-tidy-subjectmeans.txt",quote=FALSE,row.names=FALSE)
