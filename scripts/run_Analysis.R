# Course Project Getting and Cleaning data
# july 2015

# Francisco Zambrano Bigiarini (frzambra@gmail.com)

#setea el directorio de trabajo
setwd('~/coursera/Getting_and_Cleaning_Data/course_project')

list.files()

library(data.table)

xtrain <- read.table('Data/train/X_train.txt')
feat <- read.table("Data/features.txt")
ytrain <- read.table('Data/train/y_train.txt')
subtrain <- read.table('Data/train/subject_train.txt')
actlabels <- read.table('Data/activity_labels.txt')

#find the position of the mean() and std() asociated variables
ind <- c(grep("mean\\()",feat[,2]),grep("std\\()",feat[,2]))

#shorting the names of the variables
labvar <- feat[ind,2]
labvar <- gsub("Body","B",labvar)
labvar <- gsub("Gyro","G",labvar)
labvar <- gsub("Gravity","G",labvar)
labvar <- gsub("Acc","A",labvar)
labvar <- gsub("Jerk","J",labvar)
labvar <- gsub("Mag","M",labvar)
labvar <- gsub("-std\\()","_std",labvar)
labvar <- gsub("-mean\\()","_mean",labvar)
labvar <- gsub("-","_",labvar)

labvar <- gsub("tBody","tB",labvar)
labvar <- paste0(labvar,"_TR")

ytrain[,1]<-as.factor(ytrain[,1])
actlabels[,2] <- as.factor(actlabels[,2])
levels(ytrain[,1])<-actlabels[,2]

dataTrain <- data.table(activity=ytrain[,1],subjectTrain=subtrain[,1],xtrain[,ind])
setnames(dataTrain,names(dataTrain)[3:68],labvar)

library(dplyr)
dataTrain_G <- group_by(dataTrain,activity) %>%
  summarise_each(funs(weighted.mean))
  summarize(count=n())
