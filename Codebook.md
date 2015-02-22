# Codebook

This codebook explains in detail all the variables in the tidy data set which is the output of the script *run_analysis.R* (in my script this data set is called *dataDTmeans*). It is structured in the following way: for each variable its name is provided, together with its type of data, the units in which it is measured and its range of values. Finally, the origin variable in the original data of the "Human Activity Recognition Using Smartphones" experiment is also detailed, in order to give full traceability. The original data description can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

And all the information necessary to understand the original data can be found here: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Following, the variables in the *dataDTmeans* are detailed:

### activity
Type of data: Factor
Units: None, it just names the different types of activities recorded
Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
Variable of origin: The only column in Y_train.txt and Y_test.txt, and the labels in activities.txt

### subject
Type of data: Integer
Units: None, it just names the different subjets who performed the activities
Values: 1 to 30 (30 different subjects)
Variable of origin: The only column in files Subject_train.txt and Subject_test.txt

