
# Setting the working directory
setwd("C:\\Users\\Néstor\\Desktop\\Getting and Cleaning Data\\Z. Project\\UCI HAR Dataset")

# Requiring the wanted packages
require(data.table)

#############################################################
# Merging the training and test sets into a single data set #
#############################################################

#Loading the training data set
Xtrain<-read.table(".\\train\\X_train.txt",header=FALSE)
Ytrain<-read.table(".\\train\\y_train.txt",header=FALSE)
Subjecttrain<-read.table(".\\train\\subject_train.txt",header=FALSE)

#Merging the three data frames in order to obtain a single training data set
train<-cbind(Xtrain,Ytrain,Subjecttrain)

#Loading the test data set
Xtest<-read.table(".\\test\\X_test.txt",header=FALSE)
Ytest<-read.table(".\\test\\y_test.txt",header=FALSE)
Subjecttest<-read.table(".\\test\\subject_test.txt",header=FALSE)

#Merging the three data frames in order to obtain a single training data set
test<-cbind(Xtest,Ytest,Subjecttest)

#Merging the training and the test data sets in order to get a single data set
thedata<-rbind(train,test)

#######################################################################
# Extracting only the measurements of the mean and standard deviation #
#######################################################################

# THIS GOES IN MY README ==> I have deliberately considered as mean and standard deviation measurements
# only the variables with "mean" or "std" as part of their name. 
# In order to do this, I have used the provided data set "features.txt", filtered the variables 
# with "mean" or "std" as part of their names, got their column indexes and used those indexes to subset the
# data set in order to keep only the columns wanted, plus the two last columns (activity and subject)

# Importing features.txt:
features<-read.table(".\\features.txt",header=FALSE)

# Filtering the feature names which contain in their names the substrings "mean()", "meanFreq()" or "std()"
# I have done this in two steps and then merging vertically the two outputs, plus two more
# values which are the indexes of the two last columns of the data set, corresponding to the
# activity and subject (which I also want to maintain in my data set)
featuresfilt1<-features[grep("mean",features$V2), ]
featuresfilt2<-features[grep("std",features$V2), ]
featuresfilt<-rbind(featuresfilt1,featuresfilt2)
# Getting only the indexes
ColList<-as.vector(featuresfilt[,1])
# Adding the indexes of the two last columns of the data set
ColList<-as.vector(c(ColList,562,563))

# Subsetting the columns of the data set
thedata_filt<-thedata[ , ColList]


##################################################
# Renaming the activities with descriptive names #
##################################################

# Importing activity_labels.txt:
activities<-read.table(".\\activity_labels.txt",header=FALSE)

# Converting data to data tables
thedata_filt_dt<-data.table(thedata_filt)
activities_dt<-data.table(activities)

# Changing the column names of activities_dt so that the key is named the same as thedata_filt_dt
setnames(activities_dt,c("V1","V2"),c("V1.1","V2"))

# Setting the keys for merging the data
setkey(thedata_filt_dt,V1.1)
setkey(activities_dt,V1.1)

# Performing the merge
dataDT<-merge(thedata_filt_dt,activities_dt,by="V1.1")

# After the merge variable V1.1 is no longer needed as it is redundant
dataDT[,V1.1:=NULL]


#########################################################
# Labeling the data set with descriptive variable names #
#########################################################

# Recovering the names table and creating the names vector by subsetting the second column
namesvector<-as.vector(featuresfilt[,2])

# Removing characters "-", "(" and ")"
namesvector2<-gsub('-','',namesvector)
namesvector3<-gsub('()','',namesvector2, fixed="TRUE")

# Appending the names of the last two variables in "dataDT"
newnames<-c(namesvector3,c("subject","activity"))

# Renaming the variables in "dataDT"
oldnames<-as.vector(colnames(dataDT))
setnames(dataDT,oldnames,newnames)


##########################################################
# Creating an independent tidy data set with the average #
# of each variable for each activity and each subject    #
##########################################################

# I'll take advantage of ".SD", which contains the values of all columns, except the one(s) specified in "by",
# and use lapply to compute the mean.  
dataDTmeans <- dataDT[, lapply(.SD, mean), by=.(activity,subject)]

# Exporting the data to a txt file
write.table(dataDTmeans, "C:\\Users\\Néstor\\Desktop\\Getting and Cleaning Data\\Z. Project\\dataDTmeans.txt", sep="\t", row.name=FALSE)

# For the code book and readme: in order to import the output file from the project evaluation interface, 
# the following piece of code should be run: 
# projectdata<-read.table("https://s3.amazonaws.com/coursera-uploads/user-b2c76e5280752fff92288a27/973498/asst-3/8acd8b30b9ab11e485033bb58f21a5b0.txt",header=TRUE)
