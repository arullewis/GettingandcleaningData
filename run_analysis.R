library(dplyr)
library(tidyr)

## Read actvity labels
actlabelText<-
        read.delim("./data/UCI HAR Dataset/activity_labels.txt", 
                   sep = "", header = FALSE)
#read col names
colnamesx<-read.delim("./data/UCI HAR Dataset/features.txt", sep = "", header = FALSE)

##activity for test
acttest<-read.delim("./data/UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)
## activity for train
acttrain<-read.delim("./data/UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)


##new variable for activity label text
acttest <- mutate(acttest, acttext = actlabelText[V1,2])
colnames(acttest)<-c("ActivityId", "ActivityLabel")
acttrain <-mutate(acttrain, acttext = actlabelText[V1,2])
colnames(acttrain)<-c("ActivityId", "ActivityLabel")


# read the test observation test X_Test file
xtestd<-read.delim("./data/UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
# set the column names from features.txt
colnames(xtestd) <- colnamesx[,2]

## read train observation file
xtraind<-read.delim("./data/UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
# set the column names from features.txt
colnames(xtraind) <- colnamesx[,2]

#merge with activity label for test data
xtestd<-merge(xtestd,acttest,by="row.names",all=TRUE)
#merge with activity label for train data
xtraind<-merge(xtraind,acttrain,by="row.names",all=TRUE)


#Read subjects for Test
subjTest<-read.delim("./data/UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
colnames(subjTest) <- c("Subject")
# Merge the subject with test data set
xtestd<-merge(xtestd,subjTest,by="row.names",all=TRUE)

#Read subjects for Train
subjTrain<-read.delim("./data/UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
colnames(subjTrain) <- c("Subject")
# Merge the subject with test data set
xtraind<-merge(xtraind,subjTrain,by="row.names",all=TRUE)

## Make Valid Column Names for Test Data
xtestd<-tbl_df(xtestd)
valid_column_names <- make.names(names = names(xtestd), unique=TRUE, allow_ = TRUE)
names(xtestd) <- valid_column_names
xtestd <- select(xtestd, contains("mean",ignore.case = TRUE), contains("std", ignore.case=TRUE) , ActivityLabel, ActivityId, Subject)

## Make Valid Column Names for Train Data
xtraind<-tbl_df(xtraind)
names(xtraind) <- valid_column_names
xtraind <- select(xtraind, contains("mean",ignore.case = TRUE), contains("std", ignore.case=TRUE) , ActivityLabel, ActivityId, Subject)


##Combined data
combinedd<-rbind(xtestd,xtraind)

##Tidy data
tidydata<-gather(combinedd, ObservationType, observationValue, 1:86)


#Write tidy data out to file system
write.table(tidydata,file="./data/tidydata.txt",sep="\t", row.names = FALSE)





