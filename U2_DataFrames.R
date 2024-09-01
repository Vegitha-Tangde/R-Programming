#09/02/24

# DATA FRAMES

data1<-data.frame(Name=c("Tina","Riya","Tanu"),Subject=c("R","Java","C++"),Rollno=c(1,2,3))
data1
#accessing the values of data frame
data1[1]
data1[["Subject"]]
data1$"Subject"
data1[1,2]
data1[,-2]

data1[data1$Rollno>2,]
subset(data1,Rollno>2)

subset(data1,Rollno>2,-3)
subset(data1,Rollno>2,select=-Rollno)
subset(data1,Rollno>2,select=c("Name","Subject"))
data1[data1$Rollno>2,c("Name","Subject")]

#Str ->structure
str(data1)

#organize the names of the data
names(data1) 

# library ->to ask different datset
library(help="datasets")
trees   # to access individually
str(trees)

#accessing first 20 rows of the dataset
trees[1:20,]
trees[c(1:20),]

subset(trees,Height==80)
trees[trees$Height==80,]

subset(trees,Height==80,select=-Height)
trees[trees$Height==80,-2]

head(trees) # gives starting rows
head(trees,n=20)

tail(trees) # gives last rows
tail(trees,n=20)

iris
subset(iris,Sepal.Width>3)
iris[iris$Sepal.Width>3,]

#16/02/24

#PQ:

data2<-data.frame(Sname=c("Tina","John","Jack"),Company=c("Tata","Google","Amazon"),Salary=c(20000,30000,40000))
data2
data3<-rbind(data2,c("Joey","Microsoft",50000))
data3
data4<-cbind(data3,address=c("Delhi","Mumbai","Kolkata","Hyderabad"))
data4


dataf1<-data.frame(name=c("Tina","Joey"),age=c(20,25))
dataf1
dataf2<-data.frame(name=c("Riya","Jack"),age=c(21,25))
dataf2

#Merging to dataframes
rbind(dataf1,dataf2)

dataf3<-data.frame(rollno=c(1,2),company=c("TCS","L&T"))
dataf3
cbind(dataf1,dataf3)
