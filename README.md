## GetandCleanData
# Intro

This is my submission for Coursera **Getting and Cleaning Data**

# Files
* 'CodeBook.md' : codebook listing all transformations and output variables
* 'result.txt' : tidy dataset containing means of measures by subject / activity
* 'run_analysis.R' : R script that does the job


# Description of the analysis 
* Downloads, unzips and loads the files
* Merges test and train files into a single data table
* Creates a second dataset, with only mean and std variables
* Computes the means of this dataset, group by subject/activity.
* Writes the result to result.txt
