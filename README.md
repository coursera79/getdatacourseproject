# Getting and Cleaning Data - Course Project

This project processes raw data from the experiment described at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones [1] to create a tidy dataset containing the averages of mean and standard deviations per subject and activity.

## Source of the data

In the experiment a number of measurements were taken from 30 subjects doing 6 different types of 
activities. The measurements were randomly divided in two sets: a training set containing 7352 
observations and a testing set containing 2947 observations, 10299 observations in total. Each 
observation has 561 features which are either measurements or measurements which have been processed in 
some way, e.g. by calculating the mean or standard deviation of the original measures.

The data set is available for download on 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data set contains a README.txt file which contains information about how the data was obtained and 
processed.

## Processing the data

The run_analysis.R script included in this project produces a does the following things:

1. If the ZIP file has not yet been downloaded to the current work directory, it downloads it from the 
URL mentioned before.

2. The ZIP file is unpacked to a sub directory for processing.

3. The full dataset actually contains two sets, a training set (called 'train') and a testing set 
(called 'test'). Both sets are divided among a number of files with names ending in _X.txt, _y.txt and 
_subject.txt. The analysis script function combines data from these different files and adds 
descriptive column names and factor levels.

4. The datasets 'train' and 'test' are combined by combining the rows (both datasets have identical 
variables).

5. We then create a new tidy dataset from the data that is produced by step 4, starting by selecting 
the 'subject' and 'activity' columns, as well as as well as any column which contains a mean or 
standard deviation.

6. From the data set produced in step 5 we create a new data set in which the average value for each of
the selected variables is contained for every combination of subject and activity that was in the data 
set.

7. The data set produced in step 6 is put in a data frame called 'averages_per_subject_and_activity' 
and written to a file 'averages_per_subject_and_activity'.

## Resulting tidy data set

The resulting data set contains 180 observations (for 30 subjects and 6 activities) with 68 columns per
observation. Two of these columns are the subject and the activity, and the remaining 66 columns are 
the average per subject and activity of the mean and standard deviation of each feature as calculated 
in the original experiment [1].

The variables from the original experiment are contained in columns in which the names correspond to the
original name of the variable. Some variables contain an X, Y, and Z component for threedimensional 
space. Because these always reference a single observation the X, Y, and Z values are each stored in a
seperate column in the same row as opposed to using some tall data format. Spreading the column would 
also introduce NAs and make the data less tidy.

## Reading the data back in

The textfile created by the run_analysis.R file can be read back in and viewed from R Studio with the 
following code adapted from [2]:

    data <- read.table('averages_per_subject_and_activity.txt', header = TRUE)
    View(data)

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International 
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] David Hood. David's personal course project FAQ. 
https://class.coursera.org/getdata-030/forum/thread?thread_id=37
