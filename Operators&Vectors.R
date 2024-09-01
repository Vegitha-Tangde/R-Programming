#OPERATORS
#Arithmetic Operators:(+,-,*,/,%%->remainder,%/%->quotient)
a<-4;b<-5
a+b
a-b
a*b
a/b
a%%b
a%/%b

#VECTORS on Arithmetic
a<-c(2,3,4,5)
a
b<-c(6,7,8,9)
b
a+b
a-b
a*b
a/b
a%%b
a%/%b

d<-c(8,9)
d
a+d
a-d
a*d
a/d
a%%d
a%/%d

#Relational Operators: (<,>,<=.>=,!=,==)
a<-4;b<-6
a<b
a>b
a<=b
a>=b
a!=b
a==b

#Vectors on Relational
a<-c(2:5)
a
b<-6:9
b
a<b
a>b
a<=b
a>=b
a!=b
a==b

#Logical Operators: (&,|,!,&&,||)
a<-4
a
b<-6
b
a&b
a|b
!a
a&&b
a||b

#Vectors on Logical
a<-c(2:5)
a
b<-6:9
b
a&b
a|b
!a
#In case of vectors &&, || does not work
a&&b
a||b

#Miscellaneous Operators: (%in%)
a<-c(10,20,30)
b<-20
b%in%a
c<-40
c%in%a


.a<-5
ls()
ls(all.names=TRUE)
ls(all.names=FALSE)
rm(a) #removes variable a
a
rm(list=ls())
b

#25/01/24

#Example:
a<-c(1,2,3)
a
b<-c(4,5,6)
b
a+b
a-b
paste(a,b,sep='/')
paste(a,b,sep=':',collapse='/')

#Format Specifiers
a<-100
b<-"Hello"
sprintf("%s,My attendance is %0.0f",b,a)


# 01/02/24
#PQ:
a<-c(1,3,6,8,12,15,17,20)
a
a[c(which(a%%3==0,','))]
a[a%%3]==0
a[a%%3==0]
a<-scan()
a<-scan(what='character')
