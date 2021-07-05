# Vector
X <- c(1,2,3,4,5,6)
X[1]

# Matrices
# allow one data type
# lines and rows can have name
# mat[row, column]

# Data frame
# different columns can have different data types
# Dataframe$column

# Lists
#N objects, in sequence, with different classes

#Factores
# categorics variables

# Functions
# can have or not params
getwd()
sd(X)
# head(x=iris, n=2)
# head(iris)
# head(iris, 2)
# head(2)
# head(n=22) -> returns error argument 'x' is missing


# Help
# function help(function) or mouse on hover function and press F1
help(sd)

# main functions
# view first line in dataset
head()

# view last line in dataset
tail()

# statistics resume of one dataset
summary()

# path to file
file.choose()
# dimmension of dataset return number collumns and rows
dim()
# vector length
length()
# Names of columns in dataset
colnames()
# Name of rows in dataset
rownames()
# Add column
colbind()

# Machine learning generic functions
predict()

# Formula
# Vd1 + vd2 + vdn ~ Vi1 + VI2 + Vin
# before '~' dependent variables, after '~' independent variables

# Data importing
read.csv()

# import from database
# package RODBC
odbcDriveConnect()
sqlQuery()
odbcClose()

# from excel 
# import package xlsx
read.xlsx()

# import from another tools
# import package foreign
read.arrf()

# Programming

# if else
if (condition) {
  # code
} else {
  #code
}

ifelse(condition, ret T, ret F)

# Loops
for (var in seq) {
  #code
}

while(condition) {
  #code
}

break
next


# functions
name <- function(params) {
  #code
  
  return = x
  # if not call return, the function will return the last value in the function
}
