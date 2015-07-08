library(dplyr)
library(reshape2)

# Download and extract the data set.
dirname <- 'getdata_projectfiles_UCI_HAR_dataset'
zipfilename <- paste(dirname, 'zip', sep='.')
if (!file.exists(zipfilename)) {
    download.file(
        url='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
        dest=zipfilename,
        method='curl'
    )
}
unzip(zipfilename, exdir=dirname)

# Read the training and test data sets from the extracted files.
read_UCI_HAR_set <- function(setname) {
    
    # Read the data sets.
    X <- read.table(
        file.path(dirname, 'UCI HAR Dataset', setname, paste('X_', setname, '.txt', sep='')), 
        colClasses=c('numeric')
    )
    y <- read.table(
        file.path(dirname, 'UCI HAR Dataset', setname, paste('y_', setname, '.txt', sep='')), 
        colClasses=c('factor'),
        col.names=c('activity')
    )
    subject <- read.table(
        file.path(dirname, 'UCI HAR Dataset', setname, paste('subject_', setname, '.txt', sep='')), 
        colClasses=c('factor'),
        col.names=c('subject')
    )
    
    # For the X dataframe we take the descriptive column names 
    # from the features.txt file.
    feature_labels <- read.table(
        file.path(dirname, 'UCI HAR Dataset', 'features.txt')
    )
    colnames(X) <- make.names(feature_labels[,2], unique=TRUE)
    
    # For the y dataframe we add descriptibe labels to the 
    # factor variable from the activity_labels.txt file.
    activity_labels <- read.table(
        file.path(dirname, 'UCI HAR Dataset', 'activity_labels.txt')
    )
    levels(y$activity) <- activity_labels[,2]
    
    # Now combine the columns of the subject, y and X data frames 
    # into a single data frame, and return that new data frame.
    tidy <- cbind(subject, y, X)
    tidy
}

# Read the data sets for training and testing observations.
train <- read_UCI_HAR_set('train')
test <- read_UCI_HAR_set('test')

# Combine the data set in a new data set.
combined <- rbind(train, test)

# We want a data frame that contains the subject and activity, and for
# the measurements only the columns that contain the mean or standard 
# deviation of a measurement, indicated by the column name containing 
# '.mean.' or '.std.'.
mean_and_std <- select(combined, subject, activity, contains('.mean.'), contains('.std.'))

# Create a second, independent tidy data set with the average of each 
# variable for each activity and each subject. We create a data set in
# the 'wide form' (with the averages for each variable as columns) as
# opposed to 'long form' (with the variable names themselves as values
# in the table.
mean_and_std_melt <- melt(
    mean_and_std, 
    id=c('subject', 'activity')
)

averages <- dcast(mean_and_std_melt, subject + activity ~ ..., mean)

# Write the final tidy data set to a txt file.
write.table(averages, 'averages_by_subject_and_activity.txt', row.name=FALSE)