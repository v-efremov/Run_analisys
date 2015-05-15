#Codebook

Initially, data consisted of 10299 observations of 561 variables, and included a lot of measurements of each of 30 persons that performed 6 kinds of activity. Data has been received from accelerometer and gyroscope of smartphone.
Data was splitted into "train" and "test" sets that are to merge.
Data has been preprocessed as it described in article.

Descriptions of the variables were coded in their names by the rule:

1. First character - type of signal:
  + t - time domain
  + f - frequency domain
2. Origin of signal
  + Body
  + Gravity
3. Sensor
  + Acc- Accelerometer
  + Gyro - Gyroscope
4. Jerk - Acceleration
5. Mag - Magnitude
6. X, Y, Z - axis in 3-D
7. estimated information
  + mean(): Mean value
  + std(): Standard deviation
  + mad(): Median absolute deviation 
  + max(): Largest value in array
  + min(): Smallest value in array
  + sma(): Signal magnitude area
  + energy(): Energy measure. Sum of the squares divided by the number of values. 
  + iqr(): Interquartile range 
  + entropy(): Signal entropy
  + arCoeff(): Autorregresion coefficients with Burg order equal to 4
  + correlation(): correlation coefficient between two signals
  + maxInds(): index of the frequency component with largest magnitude
  + meanFreq(): Weighted average of the frequency components to obtain a mean frequency
  + skewness(): skewness of the frequency domain signal 
  + kurtosis(): kurtosis of the frequency domain signal 
  + bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
  + angle(): Angle between to vectors.

The goal of the project is selecting of mean and standard deviation values and calculate their averages for each subject for each type of activity  

Clean data contains:

"subject" - person (as a factor);
"activity" - type of activity (as a factor);

The rest of variables in tidy data set are named by the same rule as before with addition "avg":

"tBodyAcc-mean()-X avg";
"tBodyAcc-mean()-Y avg";
"tBodyAcc-mean()-Z avg";
"tBodyAcc-std()-X avg";
"tBodyAcc-std()-Y avg";
"tBodyAcc-std()-Z avg";
"tGravityAcc-mean()-X avg";
"tGravityAcc-mean()-Y avg";
"tGravityAcc-mean()-Z avg";
"tGravityAcc-std()-X avg";
"tGravityAcc-std()-Y avg";
"tGravityAcc-std()-Z avg";
"tBodyAccJerk-mean()-X avg";
"tBodyAccJerk-mean()-Y avg";
"tBodyAccJerk-mean()-Z avg";
"tBodyAccJerk-std()-X avg";
"tBodyAccJerk-std()-Y avg";
"tBodyAccJerk-std()-Z avg";
"tBodyGyro-mean()-X avg";
"tBodyGyro-mean()-Y avg";
"tBodyGyro-mean()-Z avg";
"tBodyGyro-std()-X avg";
"tBodyGyro-std()-Y avg";
"tBodyGyro-std()-Z avg";
"tBodyGyroJerk-mean()-X avg";
"tBodyGyroJerk-mean()-Y avg";
"tBodyGyroJerk-mean()-Z avg";
"tBodyGyroJerk-std()-X avg";
"tBodyGyroJerk-std()-Y avg";
"tBodyGyroJerk-std()-Z avg";
"tBodyAccMag-mean() avg";
"tBodyAccMag-std() avg";
"tGravityAccMag-mean() avg";
"tGravityAccMag-std() avg";
"tBodyAccJerkMag-mean() avg";
"tBodyAccJerkMag-std() avg";
"tBodyGyroMag-mean() avg";
"tBodyGyroMag-std() avg";
"tBodyGyroJerkMag-mean() avg";
"tBodyGyroJerkMag-std() avg";
"fBodyAcc-mean()-X avg";
"fBodyAcc-mean()-Y avg";
"fBodyAcc-mean()-Z avg";
"fBodyAcc-std()-X avg";
"fBodyAcc-std()-Y avg";
"fBodyAcc-std()-Z avg";
"fBodyAccJerk-mean()-X avg";
"fBodyAccJerk-mean()-Y avg";
"fBodyAccJerk-mean()-Z avg";
"fBodyAccJerk-std()-X avg";
"fBodyAccJerk-std()-Y avg";
"fBodyAccJerk-std()-Z avg";
"fBodyGyro-mean()-X avg";
"fBodyGyro-mean()-Y avg";
"fBodyGyro-mean()-Z avg";
"fBodyGyro-std()-X avg";
"fBodyGyro-std()-Y avg";
"fBodyGyro-std()-Z avg";
"fBodyAccMag-mean() avg";
"fBodyAccMag-std() avg";
"fBodyBodyAccJerkMag-mean() avg";
"fBodyBodyAccJerkMag-std() avg";
"fBodyBodyGyroMag-mean() avg";
"fBodyBodyGyroMag-std() avg";
"fBodyBodyGyroJerkMag-mean() avg";
"fBodyBodyGyroJerkMag-std() avg";

Transformations of data are described in script file (run_analysis.R) in the comments.