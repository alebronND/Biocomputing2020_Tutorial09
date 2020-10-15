# R Exercise 1-1
#set this to be the directory with the files needed for the exercise
setwd ("/Users/andrea/Biocomputing2020_Tutorial09")
# Part 1 of exercise
# variable_1 is a variable with the file to return lines from, in this case the csv file iris
variable_1=read.table(file='iris.csv',sep=',',header=TRUE)
# this is just to make sure the previous step worked
variable_1
# this is the variable with the number of lines to be returned by the head command
number_of_lines=(2L)
# this is just the head command with the name of the file being sent as input and the n being the number of lines to be returned from the top of the file
head (variable_1, n=number_of_lines) # this does not include the header as part of the number of lines returned 



# R Exercise 1-2
# the first two lines of command set the rest of the commands up (pulls file and sets working directory, but not in that order haha)
setwd ("/Users/andrea/Biocomputing2020_Tutorial09")
variable_1=read.table(file='iris.csv',sep=',',header=TRUE)
# print the last 2 rows in the last 2 columns to the R terminal
tail(variable_1[,4:5],n=2)

# gets the number of observations for each species included in data 
unique_names=unique(variable_1[,5])
paste(unique_names, nrow(variable_1[variable_1[,5]==unique_names,]), sep=" ")

# gets rows with Sepal.Width>3.5
variable_1[variable_1$Sepal.Width>3.5,]

#write the data for the setosa to a comma-delimited file names "setosa.csv"
df=data.frame(variable_1[variable_1$Species=="setosa",])
write.csv(df,"/Users/andrea/Biocomputing2020_Tutorial09/setosa.csv",row.names=FALSE) # setosa.csv file will be in the location specifie in line 32 - /Users/andrea/Biocomputing2020_Tutorial09

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
# this gets all rows for virginica and the last three command lines do the mean,min,max value for the observations
all_virginica_rows=variable_1[variable_1$Species=="virginica",]
mean(all_virginica_rows$Petal.Length)
min(all_virginica_rows$Petal.Length)
max(all_virginica_rows$Petal.Length)

