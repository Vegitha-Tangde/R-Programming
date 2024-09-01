#25/01/24

#UNIT 2: DATA STRUCTURES

#VECTORS

a<-c(10,20,30,40,2,3)
a
b<-10:20
b
c<--2:2
c
#accessing value
a[2]
a[2:4]
a[c(2,5)]
a[c(-2,2)] #ERROR-can't take +ve nd -ve indexes at the same time
a[-2]
a[c(-2,-4)]
a[c(a>20)]
a[a>20]
a[a>20&a<40]
a[a>10|a<30]
a>20
a>=10
d<-c("Hello",4+8i,4L,2,4.5)
d
class(d)
d<-c(4+8i,4L,2,4.5)
length(a)
subset(a,a>5) # used to access the value
a[a>20]<-5  # to replace the values
a
a[a==10]<-40
a
subset(a,a>5)<-100 # not used to be replaced
a[c(0,0,1,1,2,2)]
a[c(1,1,1,1,1,1)]
a[c(1,1,1,4,4,4)] # To repeat the value at the indices
a[c(TRUE,TRUE,FALSE,FALSE,FALSE,TRUE)] # only gives the value in which TRUE is the indices
which(a>5)  # To show in which indexes the value is 5
which(a==max(a)) # shows max index value
a[7]<-40 
a
which(a==max(a))
which.max(a)
max(a) # max value of the array
min(a) # min value of the array
sort(a)
sort(a,decreasing=TRUE)

#Practice
e<-c("Red","Green","Blue","Yellow","Orange")
length(e)
e[4]
e[-5] # deleting the vector at index 5
sort(e)
e[3]<-"White"
e
e[8]<-"Indigo"
e
seq(2,20)
seq(2,20,by=4) #To increment value
seq(2,25,length.out=4) # divide the complete series into equal parts(Given no.)[here values are repeated]
rep(c(2,3,10),each=2) # each to repeat value given no. of times
rep(c(2,3,10),times=2) # in case of times complete vector is repeated
rep(c(2,3,10),times=c(2,3,5)) # here value are repeating given no.of times

# Objects Function
objects() # gives all the variables used so far

