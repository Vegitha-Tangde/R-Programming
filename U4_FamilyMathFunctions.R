#28/03/24

# Apply family of functions
#apply, lapply, sapply, tapply, mapply

#apply -> 
apply()
mat<-matrix(1:9,nrow=3)
mat
apply(mat,1,sum)
apply(mat,2,sum)

apply(mat,1,mean)        #mean of the matrix

#********************************************************

#lapply -> gives the result in the form of a list->sqr
lapply(1:5,sqrt)

#list->5,10,12,15,16, DF vector values <-1,2,3,4 & 4,5,6,7. Perform sum using lapply function
list1<-list(c(5,10,12,15,16),data.frame(vect=c(1,2,3,4),vect2=c(4,5,6,7)))
list1
lapply(list1,sum)
lapply(list1,sqrt)

list2<-list(1,c(1,2,3,4),c(5,6,7,8))
list2
lapply(list2,sum)

#Function in user defined function
a<-1:9
func1<-function(a){
  print(a)
}
lapply(a,sqrt)

#******************************************
#sapply -> 

sapply(1:9,sqrt)
list3<-list(A=c(1:3),B=c(1:5),C=c(5:20))
sapply(list3,length)

#*****************************************

#tapply -> mean

data1<-data.frame(Name=c("aa","bb","cc","dd"), 
                  Marks=c(100,200,300,400), 
                  Section=c("A","B","A","B"),stringsAsFactors = F)
Mar<-data1$Marks
Mar
Sec<-data1$Section
Sec<-factor(Sec,levels=c("A","B"))      #Sec<-factor(data1$Section,levels=c("A","B"))
tapply(Mar,Sec,mean)

data2<-data.frame(Name=c("aa","bb","cc","dd"), 
                  Marks=c(100,200,300,400), 
                  Section=c("A","B","A","B"))
Mar<-data1$Marks
Mar
Sec<-data1$Section
tapply(Mar,Sec,mean)

#********************************************************************************
#29/03/24

#Mathematical Functions(abs-, floor, ceiling,
                #truncate->removes the decimal part,
                #round off->shows upto how much decimalvalue,
                #nchar->No.of char in a String
                #substring->shows the desired part of a String,
                #sub & gsub-> perform replacement of the first and all matches respectively,
                #toupper , tolower, grep->global regular expression print,
                #character + -> atleast 1 occurrence of that particular character
                #character * -> 0 or more occurrences of that particular character
                #character ?, character {})

abs(-5)
floor(2.4)
ceiling(2.4)
trunc(2.4)
round(2.24,digit=1)
x<-"Hello World Hello"
nchar(x)
substr(x,2,4)
sub("ell","How",x)    #single occurrence
y<-"Hello World HEllo"
sub("ell","How",x,ignore.case = T)
gsub("ell","How",x)   #All the occurrences of a matching pattern
toupper(x)
tolower(x)

#*******************************************************************************

#grep
a<-c("a","ab","acb","accb","acccb","accccb")
grep("c",a,)

grep("ac+b",a)      #pattern starts with a,ends with b, at least 1 occurrence of c in b/w

grep("ac*b",a)      #pattern should be starts with a ending b, may be or not any occurrences of c

grep("ac?b",a)      #pattern should be starts with a ending b, at most 1 occurrence of c

grep("ac{2}b",a)    #exactly 2 occurrences of c

grep("ac{2,}b",a)   #minimum 2 occurrences of c, maximum can be any

grep("ac{2,4}b",a)  #occurrences of c should be in b/w 2 and 4

#Q:vector values are ab+, bda2, +ccaa, ad , there is at least 1 occurrence of b , print the values instead of indexes

x<-c("ab+","bda2","+ccaa","ad")
grep("b+",x,value=T)              #value->gives matching value instead of indexes

#***********************************************************************************
#Regular Expression

#split
strsplit("xyz",split="")
strsplit("xyz"," ")
strsplit("xyz cv"," ")

#Q: String date, year month and day separated by -
date<-c("20-10-2020","2-5-2021","2-6-2019")
strsplit(date,"-")

#Q: String is Hi5cloud9, split where there is a digit
strsplit("Hi5cloud9","[0-9]+")

#Q: String 0123ab45c6
strsplit("0123ab45c6","[a-z]+")

#*******************************************************************************

#install dplyr & tidyr
library(dplyr)

data1<-data.frame(Name=c("aa","bb","cc","dd"),
                  Age=c(10,20,30,40),Height=c(1,2,3,4),
                  Marks=c(100,200,300,400))
data1
select(data1,starts_with("he"))    #Fetching the values starts with __ values
select(data1,-starts_with("he"))   #Fetching the values except starts with __
select(data1,ends_with("e"))       #Fetching the cols which ends with __
select(data1, contains("a"))       #Fetching the cols which contains __
select(data1, matches("he"))       #Fetching the col which matches__

#*******************************************************************************

#04/04/24

library(dplyr)
data1<-data.frame(Name=c("aa","bb","cc","dd"),
                  Age=c(10,20,30,40),Height=c(1,2,3,4),
                  Marks=c(100,200,300,400))
data1
x<-filter(data1,Age>30)
x
y<-arrange(data1,Height)
y
z<-arrange(data1,desc(Height))
z
sm<-summarise(data1,Avg=mean(Age))            #To find the Mean,sum,.......
sm
mu<-mutate(data1, Age+Height)                 #Create, modify and delete
mu
mu<-mutate(data1, Age1=(Age+Height))          #Shows the data frame along with the added col
mu
tr<-transmute(data1, Age1=(Age+Height))       #Only shows the value which is newly added
tr
wt<-with(data1, Age+Height)
wt
wi<-within(data1, Age1<-(Age+Height))
wi

#PQ: Consider the data set starwars, Find the dimensions of the starwars

View(starwars)
a<-dim(starwars)
a

#fetch all the rows where skin color is light and eye color is brown
fi<-filter(starwars, skin_color=="light", eye_color=="brown")
View(fi)

#To shows cols start with hair color and ends with eye color
a<-select(starwars, starts_with("hair_color"), ends_with("eye_color"))
View(a)
sc<-select(starwars, hair_color:eye_color)
View(sc)
sc<-select(starwars, c(hair_color,eye_color))
View(sc)

#Arrange the dataset starwars according to height
ar<-arrange(starwars, height)
View(ar)

View(slice(starwars, 5:10))           #Fetch the rows from 5th to 10th   
View(slice_head(starwars, n=3))       #Fetching 1st 3 rows
View(sample_n(starwars, 5))           #choosing random rows
View(sample_frac(starwars,.2))        #Fetching 20% of dataset
vect<-c(10,20,2,3,5,6,3,5,6,0)        #selects any random values
sample(vect,3)

#*******************************************************************************

#Pipe Operator  %>%

mtcars
a<-filter(mtcars, carb>1)             #Filter all the cols where car value is >1
View(a)

b<-group_by(a,cyl)                    #Grouping particular col
View(b)

c<-summarise(b, Avg=mean(mpg))
View(c)

d<-arrange(c, desc(Avg))              #Arranging in Asc or in desc order
d<-arrange(c, Avg)                     
d

xx<-filter(mtcars, carb>1)%>%group_by(cyl)%>%
  summarise(avg=mean(mpg))%>%arrange(avg)
View(xx)
#or
xx<-mtcars%>%filter(carb>1)%>%group_by(cyl)%>%
  summarise(avg=mean(mpg))%>%arrange(avg)
View(xx)

#By using the pipe operator, Extract the 3 rows where height value is max from starwars dataset

starwars%>%slice_max(height, n=3)

#**********************************************************************************

#05/04/24
#  "tidyr"

install.packages("tidyr")
library("tidyr")

#file1<-read.csv("bill data for tidyr.csv")
file<-read.csv(file.choose())
View(file)

data1<-gather(file,bill_data,value1,gasbill:waterbill)
View(data1)

data2<-spread(data1,bill_data,value1)
View(data2)

#separate->used to split single col to multiple cols
se<-separate(file,Date,c("Month","Date","Year"),sep="-")
View(se)

un<-unite(se,Date,c("Month","Date","Year"),sep="/")
View(un)