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

I have deliberately considered as mean and standard deviation measurements only the variables with "mean" or "std" as part of their name. In order to extract only those variables I have used the provided data set "features.txt", then filtered the variables with "mean" or "std" as part of their names using the function ```grep()```, got their column indexes and used those indexes to subset the data set in order to keep only the columns wanted, plus the two last columns (activity and subject).

I have deliberately decided not to load the data in the "Inertial Signals" folder because I think it is not necessary for doing what is asked the project (in step 2 it is asked to keep in the data set only the mean and standard deviations, and in the Inertial Signals folder there is no information about that, according to the information provided here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
