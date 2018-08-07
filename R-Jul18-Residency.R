# Setting  & Getting working directory for R Projects ,where you will store your R and othe csv files

setwd("E:\\PGPBABI-GreatLakes\\R-Lang")
getwd()

# Defining and getting integer vector
num_var <- c(1,2,3,4,5)
num_var

num_var1 <-1:20
num_var1

# R functions for getting maximum / minium and Variance of the num_var vecor
max(num_var)
min(num_var)
var(num_var)

# Bollean vector
log_var <- c(TRUE,FALSE,TRUE,TRUE)
log_var

# Character vector
char_vari <- c("RED", "GREEN")
char_vari

# Creating a column vecor with 20 records of IT Professionals and 10 records of Data Analysis and summarising the data 
jobs <- c(rep("IT Professional",20),rep("Data Analysis",10))
View(jobs)
summary(jobs)

# Factors help in defining/converting vectors into Categorical variables
jobs <- factor(jobs)
jobs <- as.factor(jobs)
summary(jobs)

# Defining Dataframes i.e table in R programing
age <- c(23,34,45)
names <- c("Mohan","RAM","RAJ")
income <- c(1000,2000,3000)
ownhouse <- c(TRUE,TRUE,FALSE)
mydataset <-data.frame(names,age,income,ownhouse)
View(mydataset)
# Accessing values from matrix using index values i.e Row & Column
mydataset[]   # Display whole Table
mydataset[2,2] # Display value that is in Row2 and Column2
mydataset[,3]  # Display all rows for 3rd column
mydataset[2:5,3] # Display rows from 2 to 5 for 3rd column
mydataset[1:3,c(1,3)] # Display row from 1 to 3 for column 1 & 3
mydataset[,-c(2,3)]

# Reading CSV file and sorting based on different columns
mydata <- read.csv('claims.csv')
View(mydata)
summary(mydata)
sortdata <-mydata[order(mydata$age),]
sortdata1 <-mydata[order(mydata$age,mydata$claim),]
sortdata1 <-mydata[order(-mydata$age,mydata$claim),]

