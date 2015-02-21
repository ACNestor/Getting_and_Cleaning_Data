# Getting and Cleaning Data Project's README

The purpose of this file is walking the reader throguh the script *run_analysis.R*, so that he/she understands how it works. The details about the variables can be found at the codebook, also provided in this repo. 

The script has the following five sections:

1. Importing and merging all the data sets

2. Extracting only the measurements of the mean and standard deviation

3. Renaming the activities with descriptive names

4. Labeling the data set with descriptive variable names

5. Creating an independent tidy data set with the average of each variable for each activity and each subject


The code script starts setting the working directory and requiring the data.table package. The working directory used for the development of the code has been left as an example, but this should be changed to the reader's or user's actual working directory. Following, the code in each of the sections is explained:

## Importing and merging all the data sets

In this section the data sets for the training sample (*X_train.txt*, *y_train.txt* and *subject_train.txt*)  and for the test sample (*X_test.txt*, *y_test.txt* and *subject_test.txt*) are read into R and merged together. First the training data set is created reading the three training data sets and merging them **horizontally**, and then the same is done for creating the test data set. Finally, both training and test sets are merged together **vertically**.

I have deliberately decided not to load the data in the "Inertial Signals" folder because I think it is not necessary for doing what is asked the project (in step 2 it is asked to keep in the data set only the mean and standard deviations, and in the Inertial Signals folder there is no information about that, according to the information provided here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


## Extracting only the measurements of the mean and standard deviation

I have considered as mean and standard deviation measurements only the variables with "mean" or "std" as part of their name. In order to extract only those variables I have used the provided data set *features.txt* and filtered the variables with "mean" or "std" as part of their names using the function ```grep()```. Then I got the variables' column indexes and used those indexes to subset the data set in order to keep only the columns wanted, plus the two last columns (activity and subject).


## Renaming the activities with descriptive names

In order to do this I have used the provided data set *activity_labels.txt*, and then paste it to the data adding a new variable with the name of the activity. Finally, I discard the original variable with the non-descriptive names of the activities, because it is no longer needed.


## Labeling the data set with descriptive variable names

In this section I take advantage of the data set *featuresfilt* created in the second step of this script. This set contains the position indices and names of the all the features in the merged data set, except the ones that identify the subject and the activity type.

Therefore, first a vector of the names in the *featuresfilt* data set is created, and then the last two names "subject" and "activity" are added to the vector. Finally, the names of the columns are given by linking them to the contents of the vector. I have deleted from the names some characters that could cause problems later: "-", "(" and ")" with the function ```gsub()```. 


## Creating an independent tidy data set with the average of each variable for each activity and each subject

I need to compute the average of all the measures (measure variables) for each value of "subject" and "activity" ("factor" variables), so I have used ```lapply``` for this taking advantage of ```.SD```, which contains the values of all columns except the one(s) specified in the ```by``` argument. This gives the ouput file of the whole process, *dataDTmeans*.

The final step is exporting *dataDTmeans* data set to a txt file using  ```write.table()```. If the reader or user wants to import this file from the project evaluation interface, the following piece of code should be run: ```projectdata<-read.table("https://s3.amazonaws.com/coursera-uploads/user-b2c76e5280752fff92288a27/973498/asst-3/8acd8b30b9ab11e485033bb58f21a5b0.txt",header=TRUE)```.


## References:

The course's discussion forums were very useful for me to understand the project itself and for reference on how to build the script, this README file and also the Codebook. Specially useful were: 
 - [David's Course Project FAQ] (https://class.coursera.org/getdata-011/forum/thread?thread_id=69)
 - [Any standard format for codebook?] (https://class.coursera.org/getdata-011/forum/thread?thread_id=204)

 
