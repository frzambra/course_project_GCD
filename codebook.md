---
title: "Code Book"
author: "Francisco Zambrano Bigiarini"
date: "24/07/2015"
output: html_document
---

## Code Book 

This is the code book file for the final project of the course Getting and Cleaning Data.

The final tidy data set was saved into the variable named 'DataMerged', its has dimmension 11880 x 5, each 5 columns represent the variables: DataSet, activity, subject, variable and value.

Variable :
 - DataSet : its a character variable and correspond to the type of data set for each measurement.
    -  Test -> is from the test data
    -  Train -> is from the train data
 - activity : its a factor variable with six levels, correspon to the activity realized for the subject.
    -  WALKING -> subject walking
    -  WALKING_UPSTAIRS -> subject walking upstairs
    -  WALKING_DOWNSTAIRS -> subject wlaking downstairs
    -  SITTING -> subject sitting
    -  STANDING -> subject standing
    -  LAYING -->  subject laying
 - subject : integer variable with values between 1 and 30, correspon to the subject was measured was done
    -  1 to 30 -> id of the subject
 - variable : factor variable with 66 levels, correspond to the measurement done to the subject, the name was shorteener respect to the original data set (see Data/features.txt)
    -  tBA_mean_X -> tBodyAcc-mean()-X
    -  tBA_mean_Y -> tBodyAcc-mean()-Y
    -  tBA_mean_Z -> tBodyAcc-mean()-Z
    -  tGA_mean_X -> tGravityAcc-mean()-X
    -  tGA_mean_Y -> tGravityAcc-mean()-Y
    -  tGA_mean_Z -> tGravityAcc-mean()-Z
    -  tBAJ_mean_X -> tBodyAccJerk-mean()-X
    -  tBAJ_mean_Y -> tBodyAccJerk-mean()-Y
    -  tBAJ_mean_Z -> tBodyAccJerk-mean()-Z
    -  tBG_mean_X -> tBodyGiro-mean()-X
    -  tBG_mean_Y -> tBodyGiro-mean()-Y
    -  tBG_mean_Z -> tBodyGiro-mean()-Z
    -  tbGJ_mean_X -> tBodyGiroJerk-mean()-X
    -  tbGJ_mean_Y -> tBodyGiroJerk-mean()-Y
    -  tbGJ_mean_Z -> tBodyGiroJerk-mean()-Z
    -  tBAM_mean -> tBodyAccMag-mean()
    -  tGAM_mean -> tGravityAccMag-mean()
    -  tBAJM_mean -> tBodyAccJerkMag-mean()
    -  tBGM_mean -> tBodyGyroMag-mean()
    -  tBGJM_mean -> tBodyGyroJerkMag-mean()
    -  fBA_mean_X -> fBodyAcc-mean()-X
    -  fBA_mean_Y -> fBodyAcc-mean()-Y
    -  fBA_mean_Z -> fBodyAcc-mean()-Z
    -  fBAJ_mean_X -> fBodyAccJerk-mean()-X
    -  fBAJ_mean_Y -> fBodyAccJerk-mean()-Y
    -  fBAJ_mean_Z -> fBodyAccJerk-mean()-Z
    -  fBG_mean_X -> fBodyGyro_mean()-X
    -  fBG_mean_Y -> fBodyGyro_mean()-Y
    -  fBG_mean_Z -> fBodyGyro_mean()-Z
    -  fBAM_mean -> fBodyAccMag-mean()
    -  fBBAJM_mean -> fBodyBodyAccJerkMag-mean()
    -  fBBGM_mean -> fBodyBodyGyroMag-mean()
    -  fBBGJM_mean -> fBodyBodyGyroJerkMag-mean()
    -  tBA_std_X -> tBodyAcc-std()-X
    -  tBA_std_Y -> tBodyAcc-std()-Y
    -  tBA_std_Z -> tBodyAcc-std()-Z
    -  tGA_std_X -> tGravityAcc-std()-X
    -  tGA_std_Y -> tGravityAcc-std()-Y
    -  tGA_std_Z -> tGravityAcc-std()-Z
    -  tBAJ_std_X -> tBodyAccJerk-std()-X
    -  tBAJ_std_Y -> tBodyAccJerk-std()-Y
    -  tBAJ_std_Z -> tBodyAccJerk-std()-Z
    -  tBG_std_X -> tBodyGyro-std()-X
    -  tBG_std_Y -> tBodyGyro-std()-Y
    -  tBG_std_Z -> tBodyGyro-std()-Z
    -  tBGJ_std_X -> tBodyGyroJerk-std()-X
    -  tBGJ_std_Y -> tBodyGyroJerk-std()-Y
    -  tBGJ_std_Z -> tBodyGyroJerk-std()-Z
    -  tBAM_std -> tBodyAccMag-std()
    -  tGAM_std -> tBodyGyroAccMag-std()
    -  tBAJM_std -> tBodyAccJerkMag-std()
    -  tBGM_std -> tBodyGyroMag-std() 
    -  tBGJM_std -> tBodyGyroJerkMag-std()
    -  fBA_std_X -> fBodyAcc-std()-X
    -  fBA_std_Y -> fBodyAcc-std()-Y
    -  fBA_std_Z -> fBodyAcc-std()-Z
    -  fBAJ_std_X -> fBodyAccJerk-std()-X
    -  fBAJ_std_Y -> fBodyAccJerk-std()-y
    -  fBAJ_std_Z -> fBodyAccJerk-std()-Z
    -  fBG_std_X -> fBodyGyro-std()-X
    -  fBG_std_Y -> fBodyGyro-std()-Y
    -  fBG_std_Z -> fBodyGyro-std()-Z
    -  fBAM_std -> fBodyAccMag-std()
    -  fBBAJM_std -> fBodyBodyAccJerkMag-std()
    -  fBBGM_std -> fBodyBodyGyroMag-std()
    -  fBBGJM_std -> fBodyBodyGyroJerkMag-std()
 - Value : numeric variable, it has the value of the measurement for each observation, the values are scaled between -1 and 1
  