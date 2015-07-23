# Course Project Getting and Cleaning data
# july 2015

# Francisco Zambrano Bigiarini (frzambra@gmail.com)

#setea el directorio de trabajo
setwd('~/coursera/Getting_and_Cleaning_Data/course_project')

list.files()

library(data.table)
library(reshape2)

#Train data set
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


ytrain[,1]<-as.factor(ytrain[,1])
actlabels[,2] <- as.factor(actlabels[,2])
levels(ytrain[,1])<-actlabels[,2]

dataTrain <- data.table(activity=ytrain[,1],subject=subtrain[,1],xtrain[,ind])
setnames(dataTrain,names(dataTrain)[3:68],labvar)

library(dplyr)
dataTrain_S <- dataTrain %>% group_by(subject,activity) %>% 
  summarise_each(funs(mean))

dataTrain_Sm <- melt(dataTrain_S,id=c('activity','subject'))
dataTrain_Sm <- cbind(DataSet="Train",dataTrain_Sm)


#Test data set
xtest <- read.table('Data/test/X_test.txt')
feat <- read.table("Data/features.txt")
ytest <- read.table('Data/test/y_test.txt')
subtest <- read.table('Data/test/subject_test.txt')
actlabels <- read.table('Data/activity_labels.txt')

ytest[,1]<-as.factor(ytest[,1])
actlabels[,2] <- as.factor(actlabels[,2])
levels(ytest[,1])<-actlabels[,2]

dataTest <- data.table(activity=ytest[,1],subject=subtest[,1],xtest[,ind])
setnames(dataTest,names(dataTest)[3:68],labvar)

library(dplyr)
dataTest_S <- dataTest %>% group_by(subject,activity) %>% 
  summarise_each(funs(mean))

dataTest_Sm <- melt(dataTest_S,id=c('activity','subject'))
dataTest_Sm <- cbind(DataSet="Test",dataTest_Sm)

#Merge test and train data sets
dataMerged <- rbind(dataTest_Sm,dataTrain_Sm)


#Averaged of each variable for each activity and subject
dataMerged_S <- dataMerged %>% group_by(subject,activity) %>% 
  summarise(Avg=mean(value))

write.table(dataMerged,'finalDataSummary.txt',row.name=FALSE)


