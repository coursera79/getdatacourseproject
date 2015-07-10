---
title: Codebook
output: html_document
---

# Source of this data

This codebook describes the processing of raw data from the experiment described at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In the experiment a number of measurements were taken from 30 subjects doing 6 
different types of activities. The measurements were randomly divided in two sets: 
a training set containing 7352 observations and a testing set containing 2947 
observations, 10299 observations in total. Each observation has 561 features which 
are either measurements or measurements which have been processed in some way.

# Short description

This data contains averages per subject and activity of the mean and standard 
deviation of a number of measurements or features that were taken during the 
experiment. Please view the list of variables for more information on each column.

While all measurement columns have been documented below, the column names have 
been standardised to allow for easy interpration. Each column name consists of two 
or three parts, separated by fots: the feature that was measured, the operation 
done on the data (either 'mean' for the mean or 'std' for the standard deviation), 
and if the data is three dimensional, the dimension to which the value applies 
(either 'X', 'Y' or 'Z').

All features were normalised and bounded to the range -1 to 1 in the original 
experiment.

# List of variables

| VARIABLE NAME         | VARIABLE                                  | VALUES/EXPLANATION        |
|-----------------------|:-----------------------------------------:|---------------------------|  
| subject               | The subject from whom the measurement     | numeric, range 1 to 30    |
|                       | was taken.                                |                           |
|                       |                                           |                           | 
| activity              | The activity that was performed by the    | factor with levels:       |
|                       | subject for the measurements.             |    1: walking             |
|                       |                                           |    2: walking upstairs    |
|                       |                                           |    3: walking downstairs  |
|                       |                                           |    4: sitting             |
|                       |                                           |    5: standing            |
|                       |                                           |    6: laying              |

tBodyAcc.mean.X         Average for this subject and activity   numeric, range -1 to 1
tBodyAcc.mean.Y         of the mean of the tBodyAcc feature,
tBodyAcc.mean.Z         with a seperate column per dimension.

tGravityAcc.mean.X      Average for this subject and activity   numeric, range -1 to 1
tGravityAcc.mean.Y      of the mean of the tGravityAcc feature,
tGravityAcc.mean.Z      with a seperate column per dimension.

tBodyAccJerk.mean.X     Average for this subject and activity   numeric, range -1 to 1
tBodyAccJerk.mean.Y     of the mean of the tBodyAccJerk
tBodyAccJerk.mean.Z     feature, with a separate column per
                        dimension.
                        
tBodyGyro.mean.X        Average for this subject and activity   numeric, range -1 to 1
tBodyGyro.mean.Y        of the mean of the tBodyGyro feature,
tBodyGyro.mean.Z        with a separate column per dimension.

tBodyGyroJerk.mean.X    Average for this subject and activity   numeric, range -1 to 1
tBodyGyroJerk.mean.Y    of the mean of the tBodyGyroJerk
tBodyGyroJerk.mean.Z    feature, with a separate column per
                        dimension.

tBodyAccMag.mean        Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the tBodyAccMag feature.

tGravityAccMag.mean     Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the tGravityAccMag
                        feature.
                        
tBodyAccJerkMag.mean    Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the tBodyAccJerkMag
                        feature.
                        
tBodyGyroMag.mean       Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the tBodyGyroMag 
                        feature.
                        
tBodyGyroJerkMag.mean   Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the tBodyGyroJerkMag
                        feature.
                        
fBodyAcc.mean.X         Average for this subject and activity   numeric, range -1 to 1
fBodyAcc.mean.Y         of the mean of the fBodyAcc feature,
fBodyAcc.mean.Z         with a separate column per dimension.

fBodyAccJerk.mean.X     Average for this subject and activity   numeric, range -1 to 1
fBodyAccJerk.mean.Y     of the mean of the fBodyAccJerk
fBodyAccJerk.mean.Z     feature, with a separate column per
                        dimension.
                        
fBodyGyro.mean.X        Average for this subject and activity   numeric, range -1 to 1
fBodyGyro.mean.Y        of the mean of the fBodyGuro feature,   
fBodyGyro.mean.Z        with a separate column per dimension.

fBodyAccMag.mean        Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the fBodyAccMag feature.

fBodyBodyAccJerkMag.mean    Average for this subject and        numeric, range -1 to 1
                            activity of the mean of the
                            fBodyBodyAccJerkMag feature.

fBodyBodyGyroMag.mean   Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the fBodyBodyGuroMag
                        feature.
                        
fBodyBodyGyroJerkMag.mean   Average for this subject and        numeric, range -1 to 1
                            activity of the mean of the
                            fBodyBodyGuroJerkMag feature.

tBodyAcc.std.X          Average for this subject and activity   numeric, range -1 to 1
tBodyAcc.std.Y          of the standard deviation of the
tBodyAcc.std.Z          tBodyAcc feature, with a separate
                        column per dimension.
                        
tGravityAcc.std.X       Average for this subject and activity   numeric, range -1 to 1
tGravityAcc.std.Y       of the standard deviation of the
tGravityAcc.std.Z       tGravityAcc feature, with a separate
                        column per dimension.
                        
tBodyAccJerk.std.X      Average for this subject and activity   numeric, range -1 to 1
tBodyAccJerk.std.Y      of the standard deviation of the
tBodyAccJerk.std.Z      tBodyAccJerk feature, with a separate
                        column per dimension.

tBodyGyro.std.X         Average for this subject and activity   numeric, range -1 to 1
tBodyGyro.std.Y         of the standard deviation of the
tBodyGyro.std.Z         tBodyGuro feature, with a separate
                        column per dimension.

tBodyGyroJerk.std.X     Average for this subject and activity   numeric, range -1 to 1
tBodyGyroJerk.std.Y     of the standard deviation of the
tBodyGyroJerk.std.Z     tBodyGyroJerk feature, with a separate
                        column per dimension.

tBodyAccMag.std         Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tBodyAccMag feature.
                        
tGravityAccMag.std      Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tGravityAccMag feature.
                        
tBodyAccJerkMag.std     Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tBodyAccJerkMag feature.
                        
tBodyGyroMag.std        Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tBodyGuroMag feature.
                        
tBodyGyroJerkMag.std    Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tBodyGuroJerkMag feature.

fBodyAcc.std.X          Average for this subject and activity   numeric, range -1 to 1
fBodyAcc.std.Y          of the standard deviation of the
fBodyAcc.std.Z          fBodyAcc feature, with a separate
                        column per dimension.
                        
fBodyAccJerk.std.X      Average for this subject and activity   numeric, range -1 to 1
fBodyAccJerk.std.Y      of the standard deviation of the
fBodyAccJerk.std.Z      fBodyAccJerk feature, with a separate
                        column per dimension.

fBodyGyro.std.X         Average for this subject and activity   numeric, range -1 to 1
fBodyGyro.std.Y         of the standard deviation of the
fBodyGyro.std.Z         fBodyGuro feature, with a separate
                        column per dimension.

fBodyAccMag.std         Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        fBodyAccMag feature.
                        
fBodyBodyAccJerkMag.std Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        fBodyBodyAccJerkMag feature.
                        
fBodyBodyGyroMag.std    Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        fBodyBodyGyroMag feature.
                        
fBodyBodyGyroJerkMag.std    Average for this subject and        numeric, range -1 to 1
                            activity of the standard deviation
                            of the fBodyBodyGyroJerkMag
                            feature.
                            


= Raw data description

The data set is available for download on https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

== ZIP file structure ==

The ZIP file contains a directory 'UCI HAR Dataset' which contains a number of files and directories, of which the most relevant are:

- activity_labels.txt contains the coding information for the different activities that were executed by the subjects, as a space seperated file with every line consisting of the activity number and the descriptive activity label

- features_info.txt contains general information about how the features (measurements) where processed

- features.txt contains the coding information for the different features, as a space seperated file with every line consisting of a column number and the descriptive feature label

- the test directory contains the test measurements (see below)

- the train directory contains the training measurements (see below)

== Training and test measurements ==

The train and test directories each contain a subdirectory 'Inertial Signals' which contains the raw measurements; we are however interested in the measurements that got some post processing. For both sets, these are split over three files, the name of which contains the set name (either 'test' or 'train') which is indicated below as SETNAME. Each file contains the data on one observation per line:

- X_SETNAME.txt lines contain all 561 features of an observation as space seperated values

- y_SETNAME.txt lines contain the activity number for an observation

- subject_SETNAME.txt lines contain the subject number for an observation

= Processing the data =

== Tidying the raw data ==

=== Read data files into data frames ===

For every set we read the three data files containing the observations, and put these in three data frames:

- Dataframe X contains the measurements from X_SETNAME.txt, with all columns as numeric.

- Dataframe y contains the activity numbers from y_SETNAME.txt, with the single column as factor.

- Dataframe subject contains the subject numbers from subject_SETNAME.txt, with the single column as factor.

=== Add descriptive variable names ===

The single variable in the 'y' dataframe gets the label 'activity'.

The single variable in the 'subject' dataframe gets the label 'subject'.

For the variables in the 'X' dataframe we take the labels from the features.txt file and use these as names for every column.

=== Convert activity numbers to factors ===

The information from activity_labels.txt is used to add descriptive labels to the factors contained in the 'y' dataframe.

=== Combining the data for each set ===

The data from the subject, y and X dataframes is combined into a single new dataframe for each of the sets, resulting in a data frame 'test' and a data frame 'train'.

== Combining the sets ==

The data frames test and train are combined by adding the rows of the two datasets.

== Extracting mean and standard deviation for each measurement ==

The column names indicate the function that was applied to the specific values. As we are only interested in extracting the mean and the standard deviation we will extract only columns referencing the mean() and std() functions. Instead of specifying the column names by hand we will just take all columns that contain the text 'mean()' or 'std()'.

The first step is to merge the information from the X_, Y_ and subject_ files for every set of observations into a single data frame.

The data has been split in two groups, train en test, which are each contained in a different subdirectory of the data set. The groups contain data with an identical structure, 


This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
