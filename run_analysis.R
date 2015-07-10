library(dplyr)
library(reshape2)

# The name of the zipfile we're working with and the
# directory we're extracing the dataset to.
directory_name <- 'getdata_projectfiles_UCI_HAR_dataset'
zipfile_name <- paste(directory_name, 'zip', sep='.')

# Download and extract the data set.
if (!file.exists(zipfile_name)) {
    download.file(
        url='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
        dest=zipfile_name,
        method='curl'
    )
}
unzip(zipfile_name, exdir=directory_name)

# This function is used to read specific files from a specific dataset. It's 
# a convenience function right on top of read.table. Note that we reference
# the directory 'UCI HAR Dataset' which is contained in the original zip file.

read_set_file <- function(setname, subset, ...) {
    read.table(
        file.path(
            directory_name, 
            'UCI HAR Dataset', 
            setname, 
            paste(subset, '_', setname, '.txt', sep='')
        ),
        ...
    )
}

# This function is used to read an entire set (in case of our data set, either
# a 'train' or 'test' set of data). It combines the data from the files and makes
# it tidy.

tidy_set <- function(setname) {
    
    # Read the data sets.
    X       <- read_set_file(setname, 'X',       colClasses=c('numeric'))
    y       <- read_set_file(setname, 'y',       colClasses=c('factor'), col.names=c('activity'))
    subject <- read_set_file(setname, 'subject', colClasses=c('factor'), col.names=c('subject'))
    
    # For the X dataframe we take the descriptive column names 
    # from the features.txt file.
    feature_labels <- read.table(file.path(directory_name, 'UCI HAR Dataset', 'features.txt'))
    colnames(X) <- make.unique(
        gsub(
            "\\.$",
            "",
            gsub(
                "\\.+",
                ".",
                make.names(
                    feature_labels[,2], 
                    unique=TRUE
                )
            )
        )
    )
    
    # For the y dataframe we add descriptibe labels to the 
    # factor variable from the activity_labels.txt file. We
    # convert the descriptions to lowercase and change _ to
    # a space to improve readability.
    activity_labels <- read.table(file.path(directory_name, 'UCI HAR Dataset', 'activity_labels.txt'))
    levels(y$activity) <- gsub("_", " ", tolower(activity_labels[,2]))
    
    # Now combine the columns of the subject, y and X data frames 
    # into a single data frame, and return that new data frame.
    cbind(subject, y, X)

}

# Read the data sets for training and testing observations.
train <- tidy_set('train')
test <- tidy_set('test')

# Now we're going to create our new data set 
# averages_per_subject_and_activity. We start by combining the rows of 
# the train and test data sets to create a single set. The rest of the 
# operations are chained to this one.

averages_per_subject_and_activity <- rbind(train, test) %>%

# The only columns we are interested in are the subject and activity
# columns, and the means and standard deviations (std) of the features,
# which are indicated by column names containing '.mean.' or '.std.'.
select(subject, activity, matches('\\.mean(\\.|$)'), matches('\\.std(\\.|$)')) %>%

# Now we melt the data set to be able to easily select the means we
# want to calculate per subject/activity (so the subject and activity
# columns together act as the identity of an observation).
melt(id=c('subject', 'activity')) %>%

# And now we cast the melted frame with subject and activity as
# identifier and the average of all the other columns calculated
# and added as columns.
dcast(subject + activity ~ ..., mean)

# The data set requested is now in averages_per_subject_and_activity.
# Write the data set to a txt file to be uploaded to Coursera.
write.table(
    averages_per_subject_and_activity, 
    'averages_by_subject_and_activity.txt', 
    row.name=FALSE
)