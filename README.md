# Course Project Cleanning and Getting Data
by Francisco Zambrano Bigiarini (frzambra@gmail.com)

This repo is the final project for the course Getting and Cleanning Data giving throw Coursera by Johns Hopkins University.

The file 'run_Analysis.R' that it is in the folder 'script', has the script for the creation of a tidy data set which make the mergin of train and test data set were are included in the 'Data' folder. Full description of the data set also are in this 'Data' folder.

The script works as follow:
  1. First load the train data set (Data/train/x_train.txt) to the 'xtrain' variable, this data has 561 measurement for 6 activities and 21 subject, the dimension of the data is 7352 x 561.
  2. Then load the 'features.txt' to the feat variable, which has the names for the 561 measurement.
  3. Load the 'Data/train/Y_train.txt' data on the 'ytrain' variable, this has the numeric values between 1 to 6 for the activities (1=walking, 2=walking upstairs, 3=walking downstairs, 4=sitting, 5=standing, 6=laying).
  4. Load the 'Data/train/subject_train.txt' on the 'subtrain' variable which has the number of the subject that do the activities in 3. For the train data set are 21 subjects (70% of 30) with number between 1 and 30.
  5. To the 'actlabels' variable was loaded the 'Data/train/activity_labels.txt' data which has the name of the activity in 3.
  6. Then for the feat variable we select only which consider the mean or standard deviation value, that its has 'mean()' or 'std()' in his description name. Then the name were shorteen and saved to the 'labvar' variable
  7. Change the values of activities in 'ytrain' for the name of the activity.
  8. Were created the 'dataTrain' variable of class  'data.table' with the activity, subject, mean and standard deviation measurements, and the names of the measurement were renamed with the 'lavbar' variable. The dataTrain variable has dimension 7352 x 68.
  9. Then were calculated the mean value for each subject and activity, and were saved in the 'dataTrain_S' variale with dimension 126 x 68. Measurement are 68 and 126 are the 6 activites by 21 subject.
  10. Finaly, were molten 'dataTrain_S' and was generated a data.table with 5 columns, c('DataSet','activity','subject','variable','value') named 'dataTrain_Sm'
  11. The same process for steps 1 to 10, was done for the 'test' data set, which in this case has 9 subject (30% of 30) and the 'dataTest_Sm' was created,
  12. Then the two data.table (dataTest_Sm and dataTrain_Sm), were merged one above the other using the 'rbind' command and stored in a variable named 'dataMerged'.

  
  
  


