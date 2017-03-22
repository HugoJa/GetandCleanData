#Input Data

The script downloads and unzips the UCI data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

# Variables

The resulting dataset contains the following variables 

* subject
* activity
* temporalbodyaccmeanx
* temporalbodyaccmeany
* temporalbodyaccmeanz
* temporalbodyaccstdx
* temporalbodyaccstdy
* temporalbodyaccstdz
* temporalgravityaccmeanx
* temporalgravityaccmeany
* temporalgravityaccmeanz
* temporalgravityaccstdx
* temporalgravityaccstdy
* temporalgravityaccstdz
* temporalbodyaccjerkmeanx
* temporalbodyaccjerkmeany
* temporalbodyaccjerkmeanz
* temporalbodyaccjerkstdx
* temporalbodyaccjerkstdy
* temporalbodyaccjerkstdz
* temporalbodygyromeanx
* temporalbodygyromeany
* temporalbodygyromeanz
* temporalbodygyrostdx
* temporalbodygyrostdy
* temporalbodygyrostdz
* temporalbodygyrojerkmeanx
* temporalbodygyrojerkmeany
* temporalbodygyrojerkmeanz
* temporalbodygyrojerkstdx
* temporalbodygyrojerkstdy
* temporalbodygyrojerkstdz
* temporalbodyaccmagmean
* temporalbodyaccmagstd
* temporalgravityaccmagmean
* temporalgravityaccmagstd
* temporalbodyaccjerkmagmean
* temporalbodyaccjerkmagstd
* temporalbodygyromagmean
* temporalbodygyromagstd
* temporalbodygyrojerkmagmean
* temporalbodygyrojerkmagstd
* frequencybodyaccmeanx
* frequencybodyaccmeany
* frequencybodyaccmeanz
* frequencybodyaccstdx
* frequencybodyaccstdy
* frequencybodyaccstdz
* frequencybodyaccjerkmeanx
* frequencybodyaccjerkmeany
* frequencybodyaccjerkmeanz
* frequencybodyaccjerkstdx
* frequencybodyaccjerkstdy
* frequencybodyaccjerkstdz
* frequencybodygyromeanx
* frequencybodygyromeany
* frequencybodygyromeanz
* frequencybodygyrostdx
* frequencybodygyrostdy
* frequencybodygyrostdz
* frequencybodyaccmagmean
* frequencybodyaccmagstd
* frequencybodybodyaccjerkmagmean
* frequencybodybodyaccjerkmagstd
* frequencybodybodygyromagmean
* frequencybodybodygyromagstd
* frequencybodybodygyrojerkmagmean
* frequencybodybodygyrojerkmagstd


The variables where choosen as they included either mean or std in their original names.
Each variable of the data set is mean grouped by activity / subject

# List of transformations

The script run_analysis.R,

1) Downloads, unzips and loads the files
2) Merges test and train files into a single data table
3) Creates a second dataset, with only mean and std variables
4) Computes the means of this dataset, group by subject/activity.
5) Writes the result to result.csv

# Required packages

The data.table and dplyr packages are required

COngrats to read even this line bro !
