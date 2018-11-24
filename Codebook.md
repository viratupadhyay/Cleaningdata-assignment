## Code Book

This is a code book to describe the data used in this project, as well as the processing required to create the resulting tidy data set.

### Overview

30 volunteers performed 6 different activities while wearing a Samsung smartphone. The smartphone captured various data about their movements using the gyrometer and accelerometer.

### Explanation of each file

* `X_train.txt`: 7352 observations of the 561 features, for 21 of the 30 volunteers.
* `y_train.txt`: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in `X_train.txt`.

* `X_test.txt`: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* `y_test.txt`: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in `X_test.txt`.
* `subject_train.txt`: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in `X_train.txt`.
* `subject_test.txt`: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in `X_test.txt`.
* `features.txt`: Names of the 561 features.
* `activity_labels.txt`: Names and IDs for each of the 6 activities.

More information about the files is available in `README.txt`. More information about the features is available in `features_info.txt`.

### Data files that were not used

The data files in the "Inertial Signals" folders were ignored and only the files mentioned above were utilized.
