# Course Project Getting and Cleaning data
# july 2015

# Francisco Zambrano Bigiarini (frzambra@gmail.com)

#setea el directorio de trabajo
setwd('~/coursera/Getting_and_Cleaning_Data/course_project')

list.files('Data/train')

xtrain <- read.table('Data/train/X_train.txt')
feat <- read.table("Data/features.txt")
ytrain <- read.table('Data/train/y_train.txt')
subtrain <- read.table('Data/train/subject_train.txt')
actlabels <- read.table('Data/activity_labels.txt')

#find the position of the mean() and std() asociated variables
ind<-c(grep("mean()",feat[,2]),grep("std()",feat[,2]))
gsub("-std\\()-","STD",feat[ind,2])


ytrain[,1]<-as.factor(ytrain[,1])
actlabels[,2] <- as.factor(actlabels[,2])
levels(ytrain[,1])<-levels(actlabels[,2])

dataTrain <- data.frame(activity=ytrain[,1],subjectTrain=subtrain[,1])

