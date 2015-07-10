# Codebook

## Summary

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

## List of variables

<pre>
VARIABLE NAME           VARIABLE                                VALUES/EXPLANATION

subject                 The subject from whom the measurement   numeric, range 1 to 30 (int)
                        was taken.

activity                The activity that was performed by the  factor with levels:
                        subject for the measurements.           1: walking
                                                                2: walking upstairs
                                                                3: walking downstairs
                                                                4: sitting
                                                                5: standing
                                                                6: laying

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
fBodyGyro.mean.Y        of the mean of the fBodyGyro feature,   
fBodyGyro.mean.Z        with a separate column per dimension.

fBodyAccMag.mean        Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the fBodyAccMag feature.

fBodyBodyAccJerkMag.mean    Average for this subject and        numeric, range -1 to 1
                            activity of the mean of the
                            fBodyBodyAccJerkMag feature.

fBodyBodyGyroMag.mean   Average for this subject and activity   numeric, range -1 to 1
                        of the mean of the fBodyBodyGyroMag
                        feature.
                        
fBodyBodyGyroJerkMag.mean   Average for this subject and        numeric, range -1 to 1
                            activity of the mean of the
                            fBodyBodyGyroJerkMag feature.

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
tBodyGyro.std.Z         tBodyGyro feature, with a separate
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
                        tBodyGyroMag feature.
                        
tBodyGyroJerkMag.std    Average for this subject and activity   numeric, range -1 to 1
                        of the standard deviation of the
                        tBodyGyroJerkMag feature.

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
fBodyGyro.std.Z         fBodyGyro feature, with a separate
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
</pre>                            
