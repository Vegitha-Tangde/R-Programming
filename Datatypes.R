a<-TRUE
a
typeof(a)
class(a)
a<-FALSE
class(a)
a<-6
class(a)
a<-5.6
class(a)
a<-5L
class(a)
a<-4+6i
class(a)
a<-5
typeof(a)
a<-'A'
class(a)
a<-"Hello"
class(a)
a<-5
as.complex(a)
a<-6
as.integer(a)
a<-4+5i
as.integer(a)
as.logical(a)
a<-0
as.logical(a)
a<-1
as.logical(a)
a<-"Hello"
as.integer(a)
a<-"12345"
as.integer(a)
a<-"1234a"
as.integer(a)
a<-"1234"
b=as.integer(a)
class(b)
cat(a)
a<-5; b<-6
c<-10
cat(a,b)
cat(a," ",b,"\n",c)
age<-19
paste("My age is:",age)
paste0("My age is:",age)
#paste0 removes space after :
ls()
#ls -> gives list of variables taken so far
a<-readline(prompt="Enter your name:")
b<-readline(prompt="Enter your age:")
paste("My name is",a,"and My age is",b)
as.integer(b)
a<-1; b<-2; c<-3; d<-4; e<-5
cat(a+b+c+d+e)
a<-readline(prompt="a:")
b<-readline(prompt="b:")
c<-readline(prompt="c:")
d<-readline(prompt="d:")
e<-readline(prompt="e:")
sum(a,b,c,d,e)

#18/01/2024

a=scan()
a
class(a)
a=scan(what='character')
a
