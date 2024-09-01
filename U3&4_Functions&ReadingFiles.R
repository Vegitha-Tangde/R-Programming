# 14/03/24

# FUNCTIONS

#variable<-function(){
#  body of the function
#}
#variable()

#***********************************************
var1<-function(){
  print("Hello")
}
var1()
var1()   #Function called multiple times

#***********************************************

#Function with parameter->(POSITIONAL ARGUMENTS)

add<-function(a,b){
  print(a+b)
}
add(2,2)

#*************************************************

#providing keys to the function->(KEYWORD ARGUMENT)

sub<-function(a,b){
  print(a-b)
}
sub(b=2,a=3)

#*************************************************

#PQ

# Mixed Arguments

mul<-function(a,b) {
  print(a*b)
}
mul(2,a=2)

#*************************************************

#Area of the circle using function

area<-function(r){
  print(3.14*r*r)
}
a<-as.numeric(readline())
area(a)

#***********************************************

# Default Arguments

x<-function(a=10,b=20) {
  print(a*b)
}
x()
#**************************************
x<-function(a=10,b=20) {
  print(a*b)
}
x(20)                  #Will consider the value of a=20
#**************************************
x<-function(a=10,b) {
  print(a*b)
}
x(b=20)

#*************************************
#PQ

#Squares of numbers 1-5

#Without using loop

sqrt<-function(a) {
  print(a*a)
}
a<-c(1:5)    #b<-scan()   (taking inputs)
sqrt(a)      #sqrt(b)

#*************************************
#PQ
#printing 4x4 matrix pattern

a<-function(){
  for(i in 1:4){
    for(j in 1:4){
      cat("* ")
    }
    cat("\n")
  }
}
a()
#**************************************

#printing right angle triangle pattern

a<-function(){
  for(i in 1:4){
    for(j in 1:i){
      cat("* ")
    }
    cat("\n")
  }
}
a()
#************************************

# Local and Global scope of a variable

a<-5
area<-function(pi=3.14,a=2) {
  x<-pi*a*a
  print(x)
  rm(a)
  y<-pi*a*a
  print(y)
}
area()
#**************************************
#NESTED FUNCTIONS

sub<-function(x,y){
  print(x-y)
}
add<-function(a,b){
  print(a+b)
  sub(4,2)
}
add(2,4)
add(add(2,4),add(3,6))
#***************************************

#Anonymous Functions : not defining 

(function(pi=3.14,r)pi*r*r)(r=6)

#****************************************

#15/03/24

#return type of function -> 

#LAZY EVALUATION

exp<-function(a,b){
  print(a)
  print(a^2)
  print(a^b)
}
exp(6)       #not giving error at function calling, it is evaluating the error late 
#*****************************************

#PACKAGES

#to read csv file
#Same working directory->give the name of the file.csv
#If not in Working directory -> Then copy the path of the csv file paste the path of the file

inp<-read.csv("input.csv")
inp

# to choose the file
inp1<-read.csv(file.choose())
inp1
is.data.frame(inp1)

#installing the package
install.packages("readxl")

#importing the package
library("readxl")

#to upload excel file
df<-read_excel(file.choose())
df

#to view all the rows and cols in the file
View(df)

#installing and importing SQL files
install.packages("sqldf")
library("sqldf")

sqldf("select * from df")         #df->select the var in which file is saved
View(sqldf("select * from df"))   #to view the complete file

#to select or access only particular rows or cols in sql(first n rows or cols)
sqldf("select * from df limit 10")
View(sqldf("select * from df limit 10"))

#select (order by)
sqldf("select Region, Profit from df order by Profit")         # Gives the Regions profit wise
View(sqldf("select Region, Profit from df order by Profit"))

#group by
sqldf("select Region, Profit from df group by Profit")         #grouping the same values
View(sqldf("select Region, Profit from df group by Profit"))


#Name: T Vegitha    Roll No: 58    Section: K22HZ     Reg.No: 12217632

                    #ACTIVITY 5    

#21/03/24
library("readxl")
smp<-read_excel(file.choose())                                            #(*) -> from complete data
smp
View(smp)
#Counting 
library("sqldf")
sqldf("select count(*) from smp")

View(sqldf("select * from smp where profit>0"))                            #selecting profit>0

#Arranging in Ascending and Descending 
View(sqldf("select * from smp order by profit"))                           #By default Ascending
View(sqldf("select * from smp order by profit desc"))                      #desc-> by descending order

View(sqldf("select * from smp limit 10"))                                  #Fetching first 10 rows
View(sqldf("select sum(sales) from smp"))                                  #Displaying Sum of sales(col)
View(sqldf("select avg(sales) from smp"))                                  #Avg
View(sqldf("select Region,Segment,City from smp where City like 'H%'"))    #Displaying Region, Segment, City cols from file where city starts with letter 'H'
View(sqldf("select Region,Segment,City from smp where City like '%h'"))    #Where city ends with H
View(sqldf("select Region,Segment,City from smp where City like '%h%'"))   #where h is in the middle
View(sqldf("select sum(sales) from smp where Region=='Central'"))          #Displaying rows where Region is Central and calculating their Sales sum
View(sqldf("select * from smp group by Profit"))                           #Displaying all the rows, Similar values should be at same place by group by
View(sqldf("select sum(sales) from smp where profit==                      
           (select max(profit) from smp)"))                                 #sum of Sales where profit is maximum


View(sqldf("select Quantity as Q, Profit as P from smp"))                  #Renaming the col Quantity->q nd Profit as p

#select sum of sales where regions are central and west
View(sqldf("select sum(sales) from smp where Region in('Central','West')"))    # For multiple -> in

#display profit and region grouping in terms of region where sum of profit > 0
View(sqldf("select Profit,Region from smp group by Region having sum(profit)>0"))

