# TASK 1: reading in and aggregating data 
# using the libraries plyr, dplr, and tidyr complete the following tasks

# read in the file rawdata.csv


# write out a tab-seperated file as a backup of your raw data, make sure no rownames are written out in the output file


# aggregate the data into a tidy dataframe so that each column is a variable, and each row is an observation (a "long" dataframe)... i.e. 2730 obs of 10 variables


# repeat this step but additonally convert the column "specimens" from "chr" to a factor (which should have 30 unique levels)
# hint use mutate after your reshaping into a "long" dataframe


# summarise (add) all the counts so you get a grand total for every specimen for every sample name ("name") time and pos... i.e. 540 obs of 6 variables


# summarise (add) all the counts so you get a grand total for every specimen for every sample name (name) time and pos and group  i.e. 1080 obs of 7 variables
