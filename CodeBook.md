---
title: "Codebook"
output: html_document
---

This codebook describes the processing of raw data from the experiment described at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In the experiment a number of measurements were taken from 30 subjects doing 6 different types of activities. The measurements were randomly divided in two sets: a training set containing 7352 observations and a testing set containing 2947 observations, 10299 observations in total. Each observation has 561 features which are either measurements or measurements which have been processed in some way.

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
