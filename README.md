# GettingandcleaningData

## Project Description
        The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

        One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

        http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
    
        Here are the data for the project:

        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
        
        You should create one R script called run_analysis.R that does the following.

        Merges the training and the test sets to create one data set.
                Extracts only the measurements on the mean and standard deviation for each measurement.
                Uses descriptive activity names to name the activities in the data set.
            Appropriately labels the data set with descriptive activity names.
        Creates a second, independent tidy data set with the average of each variable for each activity and each 
    subject.


#STEPS TO REPRODUCE THE analysis


# Step 1: Run downloadData.R to get the data from internet

        ##  This file downloads zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and extracts to /data/HARDataSet.zip


# Step 2 : Run run_analysis.R to analyse the data and produce tidy data

        
        ###   This scripts first downloads activity alabels from activity_labels.txt
        ###   Secondly the script reads column names from features.txt file
        ###   Then it reads activity data from y_test.txt and y_train.txt files
        ###   Then the script creates activity data by combining the activity text and numbers
        ###   Then the script read test and training observations.
        ###    Next step is to read Subjects for both test and train observations
        ###    Next step is to provide column names for the observations and combine them.
        ###    Final step is to tidy the data and output.
        ###   The variable tidydata should have the tidied data 

# OUTPUT:

    TIDIED DATA IS STORED AS A TAB SEPERATED FILE <PROJECT_HOME>/data/tidydata.txt

    CODE BOOK IS AVAILABLE  - <PROJECT_HOME/data/codebook.md