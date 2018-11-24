## Cleaningdata-assignment

The final project at the end of the course [Getting and Cleaning Data](https://www.coursera.org/course/getdata) was to read in the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), perform an analysis on the data set, and output a tidy data set.

**Here are the steps that must be performed before running the R script:**

1. Download the zip file from [this URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip the file in the same folder.
3. Move the following files to the SAME DIRECTORY as the R script:
	* `X_train.txt`
	* `X_test.txt`
	* `y_train.txt`
	* `y_test.txt`
	* `features.txt`
	* `subject_train.txt`
	* `subject_test.txt`

**Run the R script ([run_analysis.R](run_analysis.R)).** Note: [reshape2 package](http://cran.r-project.org/web/packages/reshape2/index.html) is prerequesite, which can be downloaded from CRAN.

**Output is a tidy data set, [tidydata.csv].**

You can read more about the data and the analysis in the code book included in the repository.
