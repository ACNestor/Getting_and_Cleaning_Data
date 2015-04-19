# CODEBOOK

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


### tBodyAccmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: 0.2216 to 0.3015

Variable of origin: tBodyAcc-mean()-X


### tBodyAccmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.040510 to -0.001308

Variable of origin: tBodyAcc-mean()-Y


### tBodyAccmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.15250 to -0.07538

Variable of origin: tBodyAcc-mean()-Z


### tGravityAccmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.6800 to 0.9745

Variable of origin: tGravityAcc-mean()-X


### tGravityAccmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.47990 to 0.95660

Variable of origin: tGravityAcc-mean()-Y


### tGravityAccmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.49510 to 0.95790

Variable of origin: tGravityAcc-mean()-Z


### tBodyAccJerkmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: 0.04269 to 0.13020

Variable of origin: tBodyAccJerk-mean()-X


### tBodyAccJerkmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.0386900 to 0.0568200

Variable of origin: tBodyAccJerk-mean()-Y


### tBodyAccJerkmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.067460 to 0.038050

Variable of origin: tBodyAccJerk-mean()-Z


### tBodyGyromeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.20580 to 0.19270

Variable of origin: tBodyGyro-mean()-X


### tBodyGyromeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.20420 to 0.02747

Variable of origin: tBodyGyro-mean()-Y


### tBodyGyromeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.07245 to 0.17910

Variable of origin: tBodyGyro-mean()-Z


### tBodyGyroJerkmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.15720 to -0.02209

Variable of origin: tBodyGyroJerk-mean()-X


### tBodyGyroJerkmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.07681 to -0.01320

Variable of origin: tBodyGyroJerk-mean()-Y


### tBodyGyroJerkmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.092500 to -0.006941

Variable of origin: tBodyGyroJerk-mean()-Z


### tBodyAccMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9865 to 0.6446

Variable of origin: tBodyAccMag-mean()


### tGravityAccMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9865 to 0.6446

Variable of origin: tGravityAccMag-mean()


### tBodyAccJerkMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9928 to 0.4345

Variable of origin: tBodyAccJerkMag-mean()


### tBodyGyroMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9807 to 0.4180

Variable of origin: tBodyGyroMag-mean()


### tBodyGyroJerkMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.99730 to 0.08758

Variable of origin: tBodyGyroJerkMag-mean()


### fBodyAccmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9952 to 0.5370

Variable of origin: fBodyAcc-mean()-X


### fBodyAccmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.98900 to 0.52420

Variable of origin: fBodyAcc-mean()-Y


### fBodyAccmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9895 to 0.2807

Variable of origin: fBodyAcc-mean()-Z


### fBodyAccmeanFreqX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.63590 to 0.15910

Variable of origin: fBodyAcc-meanFreq()-X


### fBodyAccmeanFreqY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.379500 to 0.466500

Variable of origin: fBodyAcc-meanFreq()-Y


### fBodyAccmeanFreqZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.52010 to 0.40250

Variable of origin: fBodyAcc-meanFreq()-Z


### fBodyAccJerkmeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9946 to 0.4743

Variable of origin: fBodyAccJerk-mean()-X


### fBodyAccJerkmeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: 0.9894 to 0.2767

Variable of origin: fBodyAccJerk-mean()-Y


### fBodyAccJerkmeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9920 to 0.1578

Variable of origin: fBodyAccJerk-mean()-Z


### fBodyAccJerkmeanFreqX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.57600 to 0.33140

Variable of origin: fBodyAccJerk-meanFreq()-X


### fBodyAccJerkmeanFreqY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.60200 to 0.19570

Variable of origin: fBodyAccJerk-meanFreq()-Y


### fBodyAccJerkmeanFreqZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.62760 to 0.23010

Variable of origin: fBodyAccJerk-meanFreq()-Z


### fBodyGyromeanX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9931 to 0.4750

Variable of origin: fBodyGyro-mean()-X


### fBodyGyromeanY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9940 to 0.3288

Variable of origin: fBodyGyro-mean()-Y


### fBodyGyromeanZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9860 to 0.4924

Variable of origin: fBodyGyro-mean()-Z


### fBodyGyromeanFreqX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.395800 to 0.249200

Variable of origin: fBodyGyro-meanFreq()-X


### fBodyGyromeanFreqY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.66680 to 0.27310

Variable of origin: fBodyGyro-meanFreq()-Y


### fBodyGyromeanFreqZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.50750 to 0.37710

Variable of origin: fBodyGyro-meanFreq()-Z


### fBodyAccMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9868 to 0.5866

Variable of origin: fBodyAccMag-mean()


### fBodyAccMagmeanFreq
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.31230 to 0.43580

Variable of origin: fBodyAccMag-meanFreq()


### fBodyBodyAccJerkMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9940 to 0.5384

Variable of origin: fBodyBodyAccJerkMag-mean()


### fBodyBodyAccJerkMagmeanFreq
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.12520 to 0.48810

Variable of origin: fBodyBodyAccJerkMag-meanFreq()


### fBodyBodyGyroMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9865 to 0.2040

Variable of origin: fBodyBodyGyroMag-mean()


### fBodyBodyGyroMagmeanFreq
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.45660 to 0.40950

Variable of origin: fBodyBodyGyroMag-meanFreq()


### fBodyBodyGyroJerkMagmean
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9976 to 0.1466

Variable of origin: fBodyBodyGyroJerkMag-mean()


### fBodyBodyGyroJerkMagmeanFreq
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.18290 to 0.42630

Variable of origin: fBodyBodyGyroJerkMag-meanFreq()


### tBodyAccstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9961 to 0.6269

Variable of origin: tBodyAcc-std()-X


### tBodyAccstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.99020 to 0.61690

Variable of origin: tBodyAcc-std()-Y


### tBodyAccstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9877 to 0.6090

Variable of origin: tBodyAcc-std()-Z


### tGravityAccstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9968 to -0.8296

Variable of origin: tGravityAcc-std()-X


### tGravityAccstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9942 to -0.6436

Variable of origin: tGravityAcc-std()-Y


### tGravityAccstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9910 to -0.6102

Variable of origin: tGravityAcc-std()-Z


### tBodyAccJerkstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9946 to 0.5443

Variable of origin: tBodyAccJerk-std()-X


### tBodyAccJerkstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9895 to 0.3553

Variable of origin: tBodyAccJerk-std()-Y


### tBodyAccJerkstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.99330 to 0.03102

Variable of origin: tBodyAccJerk-std()-Z


### tBodyGyrostdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9943 to 0.2677

Variable of origin: tBodyGyro-std()-X


### tBodyGyrostdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9942 to 0.4765

Variable of origin: tBodyGyro-std()-Y


### tBodyGyrostdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9855 to 0.5649

Variable of origin: tBodyGyro-std()-Z


### tBodyGyroJerkstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9965 to 0.1791

Variable of origin: tBodyGyroJerk-std()-X


### tBodyGyroJerkstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9971 to 0.2959

Variable of origin: tBodyGyroJerk-std()-Y


### tBodyGyroJerkstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9954 to 0.1932

Variable of origin: tBodyGyroJerk-std()-Z


### tBodyAccMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9865 to 0.4284

Variable of origin: tBodyAccMag-std()


### tGravityAccMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9865 to 0.4284

Variable of origin: tGravityAccMag-std()


### tBodyAccJerkMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9946 to 0.4506

Variable of origin: tBodyAccJerkMag-std()


### tBodyGyroMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9814 to 0.3000

Variable of origin: tBodyGyroMag-std()


### tBodyGyroJerkMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9977 to 0.2502

Variable of origin: tBodyGyroJerkMag-std()


### fBodyAccstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9966 to 0.6585

Variable of origin: fBodyAcc-std()-X


### fBodyAccstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.99070 to 0.56020

Variable of origin: fBodyAcc-std()-Y


### fBodyAccstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9872 to 0.6871

Variable of origin: fBodyAcc-std()-Z


### fBodyAccJerkstdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9951 to 0.4768

Variable of origin: fBodyAccJerk-std()-X


### fBodyAccJerkstdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9905 to 0.3498

Variable of origin: fBodyAccJerk-std()-Y


### fBodyAccJerkstdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.993100 to -0.006236

Variable of origin: fBodyAccJerk-std()-Z


### fBodyGyrostdX
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9947 to 0.1966

Variable of origin: fBodyGyro-std()-X


### fBodyGyrostdY
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9944 to 0.6462

Variable of origin: fBodyGyro-std()-Y


### fBodyGyrostdZ
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9867 to 0.5225

Variable of origin: fBodyGyro-std()-Z


### fBodyAccMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9876 to 0.1787

Variable of origin: fBodyAccMag-std()


### fBodyBodyAccJerkMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9944 to 0.3163

Variable of origin: fBodyBodyAccJerkMag-std()


### fBodyBodyGyroMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9815 to 0.2367

Variable of origin: fBodyBodyGyroMag-std()


### fBodyBodyGyroJerkMagstd
Type of data: Numeric

Units: None, as the original variable was normalised and this variable is a mean of the original one by activity and subject

Values: -0.9976 to 0.2878

Variable of origin: fBodyBodyGyroJerkMag-std()
