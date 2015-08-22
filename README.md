# Getting and Cleaning Data (Coursera)

This repository contains the script (run_analysis.R) and the code book (CodeBook.md) for the Course Project for the course Getting and Cleaning Data.

The script can be used with the data from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
if the data is in the working directory of R.

-The script collects all the data into one dataset. 
-Adds labels for the variables from the features.txt file.
-Selects all the columns with the mean or the standard deviation measurements.
-Adds descriptive names to the activities in the data set (using the activity_label.txt file).
-Groups the data by subject and activity and calculates the mean for each variable and group.

The code book gives more detail on the variables in the resulting tidy data set (sum_data).
