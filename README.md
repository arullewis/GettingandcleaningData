# GettingandcleaningData


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

