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

# Store integer value as character
mycharvar <-c("1","2","5","7")
mycharvar

# Converting Character into Integer
myintvar <-as.integer(mycharvar)
myintvar

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
sortdata1 <-mydata[order(mydata$age,mydata$claim),] # Sorting mydata table based on age and claims
sortdata1 <-mydata[order(-mydata$age,mydata$claim),]

# Some usefull commands
options(max.print = 10000000) # sometime result of some calculations or graph is long enough than 99999, this commands help in overcoming that issue
rnorm(10,mean=0, sd=1) # rnorm generates a random value from the normal distribution
set.seed(123) # The seed number you choose is the starting point used in the generation of a sequence of random numbers, suppose 2 people are testing for something
rnorm(3,mean=0, sd=1)
runif(10,min=5,max=9) # Conditional random  no with starting and minimum value and total randowm nos
options(scipen = 0)  # It  takes exponential
options(scipen=999) # It wont take exponential

# airquality is the inbuild table or file provided by R itself
mydata <- airquality
summary(mydata)
filterdata <- mydata[which(mydata$Wind>10),] # Filtering data based on condition wind>10
filterdata <- subset(mydata,Wind>10) # Subset is also used for filetering data based on condition
subset(airquality, Temp > 80, select = c(Ozone, Temp)) # It is like a sub-query slecting Ozone and Temp where Temp> 80
filterdata

# attach command is usedfull to sued direct name of the column instead of using like mydata$Wind instead we can directly use Wind column
attach(iris) # like airqulity in-built file or table in R, iris is same
str(iris) # str gives the structure of the table / matrix
newdata <- subset(iris, Sepal.Length >=4 & Sepal.Length <5, select=c(1,2))
newdata

# Graphs using HISTOGRAMS 
hist(iris$Sepal.Length)
attach(iris) # Now applying attach command to use column names directly
hist(Sepal.Length)
hist(iris$Sepal.Length,xlab="Sepal Length",ylab="Count", main="Sepal Length Count", col="orange")
display.brewer.all() # This is the color palatte we can use in our graphs, may be you have installed the package but for running it it  needs to select RcolorBrewer in the package list
hist(iris$Sepal.Length,col=brewer.pal(8,"Set3")) # we are using Set3 for Brewer palatte and 8 tower of histogram should used the sequence of colors from brewer pallatte
hist(iris$Sepal.Length,col=brewer.pal(8,"Blues"))

# Graphs using PIE
myvalues <-c(12,15,35,67)
names(myvalues)=c("North","East","West","South")
myLabel=paste(names(myvalues),round(myvalues*100/sum(myvalues))) # Paste used for Concatenating vectors after converting to characte
myLabel=paste(myLabel,"%")
pie(myvalues,labels=myLabel,col=rainbow(length(myLabel)))
pie(myvalues,labels=myLabel,col=brewer.pal(8,"Greys"))

# Graph using BARPLOT
mydata <- read.csv('claims.csv')
table(mydata$smoker) # For table creation of data here in claims.csv file
prop.table(table(mydata$smoker)) # You can generate frequency tables using the table( ) function, tables of proportions using the prop.table( ) function, and marginal frequencies using margin.table( )
barplot(table(mydata$smoker))
barplot(table(mydata$smoker),horiz=T)
barplot(table(mydata$smoker),col="red")
barplot(table(mydata$smoker),col=brewer.pal(8,"Greens"))

dev.off() # To clear the graph display are and can be used after mfrow..sothat we can have default properties of showing one graph
par(mfrow=c(2,2)) # This is going to dive the graph display are in 2 by 2 matrix ie 4 graphs at one time
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)
dev.off()

# Graph BOXPLOT
boxplot(iris$Sepal.Length, horizontal = TRUE)
summary(iris$Sepal.Length)
boxplot(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width)
boxplot(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width, col=brewer.pal(5,"Set3"))

# Graph SCATTER DIAGRAM
plot(iris$Sepal.Width,iris$Sepal.Length)
plot(iris$Sepal.Width,iris$Sepal.Length,col=brewer.pal(2,"Set2"))
View(iris)

# Substr and replacement command
word = "Apple"
substr(word,start = 1,stop = 2)
replacement <- "XX"
substr(word,start = 1,stop = 2)<-replacement
word
word<-substr(word,start = 1,stop = 2)<-replacement
word

# LOOPS  - for (example-1)
for(i in (1:10))
{
  print(c(i,i*i))
}

# LOOPS  - for (example-2)
car <- c("Hyundai","Tata","Honda")
for(j in car){
  print(paste(j,"- All Variants", sep="-----"))
}

# LOOPS  - for (example-3)
View(mtcars) # mtcars s another in-built data in R
data(mtcars)
for(vars in names(mtcars))
  print(vars)

# LOOPS - if loop and break command
x<-1:10
for(i in x){
  if(i==5){
    break
  }
  print(i)
}

# LOOPS - while
i <- 2.999
while(i<=4.999){
  i<-i+0.999
  print(c(i,i-2,i*i))
}

# Functions - Example-1
fahrenheit_to_kelvin <- function(temp_F) {
  temp_K <- ((temp_F - 32) * (5 / 9)) + 273.15
  return(temp_K)
}
fahrenheit_to_kelvin(95)

# Functions - Example-2
Math_functions <- function(val1,val2){
  add_v <- val1 + val2
  mul_v <- val1 * val2
  add_mul <- c(add_v,mul_v)
  return(add_mul)
} 
Math_functions(2,3)

# Functions - Example-3
myvalues <-sapply(1:10,function(x)x*x)
myvalues

myvector <- c(2,3,4,5,6,7,8,9)
mylist <-as.list(myvector)
myvalues <-sapply(mylist,function(x) x^2)
myvalues

# Matrix function - generating 50 random no matrix with 10 by 5 matrix
yourmatrix <-matrix(rnorm(50), nrow=10,ncol=5)
yourmatrix

# Apply returns a vector or array or list of values obtained by applying a function to margins of an array or matrix.
# The Apply Functions As Alternatives To Loops
apply(yourmatrix,MARGIN = 2,sum) # Margin=1 means rows and 2 means column, Here we are applying sum of all the columns 
apply(yourmatrix,MARGIN = 1,sum)

# tapply example
mydata <-read.csv('claims.csv')
tapply(mydata$age,mydata$gender,mean)
