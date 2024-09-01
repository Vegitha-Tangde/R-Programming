# 22/02/24

#UNIT 3
 # Control Structures/ Conditional Statements

x<-5L
if(is.integer(x)){
  print(x)
}

# 23/02/24

#if

age<-as.numeric(readline())
if(age>=18){
  print("Eligible for voting")
} else {
  print("Not Eligible")
}

#*********************************

x<-as.numeric(readline())
if(x%%2==0) {
  print("Even")
} else {
  print("Odd")
}

#*********************************

y<-c(18,19,20)
if(19 %in% y) {
  print("Yes")
} else {
  print("No")
}

#*********************************

x<-15
if(is(x,"numeric")){
  print(x/2)
} else{
  print("Try another value")
}

#*********************************

vect<-c(2,5,7,10,15)
ifelse((vect%%2==0),"Even","Odd")
#*********************************
vect1<-c("a","b","a","c","f")
vect2<-c("b","a","d","e","g")
ifelse(c(TRUE,TRUE,FALSE,TRUE,FALSE),vect1,vect2)

#*********************************

x<-12
if(x%%2==0) x/2 else print("Try another value")

#*********************************

#if, else if, else

z<-as.numeric(readline())
if(z==0){
  paste(z, " is zero")
}else if(z>0) {
  print(paste(z , " is positive"))
} else {
  cat(z , " is negative")  # can use cat, paste and print
}

#*********************************

#check whether it is even or odd and positive or Negative

z<-as.numeric(readline())
if(z>0) {
  if(z%%2==0) {
    paste(z,"is Positive and Even")
  }
  else {
    paste(z,"is Positive and Odd")
  }
} else if(z<0) {
  if(z%%2==0) {
    paste(z,"is Negative and Even")
  } else {
    paste(z, " is Negative and Odd")
  }
}

#******************************************************

# REPEAT

#repeat{
#  statements
# if(condition){
#    break
#  }
#}

num<-10
count<-1
repeat{
  print(num)
  count=count+1
  if(count>=5) {
    break
  }
}
#******************************************

#Q: Initialize a var->value, repeat the value till it is <30 and increment the value of that var by 5
#num1<-5
#count<-1
#print(num1)
#count=count+1
#if(count<30)

#***************************************************************

#29/02/24

#Ans:
i=5
repeat{
  print(i)
  i=i+5
  if(i>=30){
    break
  }
}

#***************************************************************

# WHILE

#while{
#     statement/Body of the while
# }

num<-1
sum=0
while(num<=10){
  sum=sum+num
  num=num+1
#}
print(sum)
}
#*********************************

#Q: Sum of Squares of first n natural numbers , n<=10

num<-as.numeric(readline("Enter the number: "))
sum=0
n<-0
while(n<=num){
  sum=sum+(n*n)  # exponential operator-> n^2
  n=n+1
}
print(sum)
#************************************

#Q: Initial value assign as 2,while loop is executed till this var value is <=20, break the when the value=18, value is incremented.

num<-2
while(num<=20){
  if(num==18){
    break
  }
  print(num)
  num=num+2
}
#*********************************************

#Q: Consider a var assign as 1, the condition will be var value is <=10, if even then increment by 1, whenever it encounter the even no. then skip, if encounter with odd print the value.

num<-1
while(num<=10){
  if(num%%2==0){
    num=num+1
  next          # continue and skip is not used in R instead next is used
  }
  print(num)
  num=num+1
}
#*********************************************

#Consider a num<-2, condition->num<=25, along with the number if even print even and if odd then print odd

num<-2
while(num<=25){
  if(num%%2==0){
    cat("Even : ",num,"\n")
  } else {
    cat("Odd  : ",num,"\n")
  }
  num=num+1
}
#*********************************************

# FOR

#for(i in range){
#         statements
#}

vect<-c("Hello","Hii","Hey")
for(i in vect){
  print(i)
}

#can also consider the value inside the loop
for(i in c(-7,8,9,10)){
  print(i)
}

for(i in 1:4){
  print(i)
}

#seq(from.to.by)
#seq(1,20,by=2)
for(i in seq(1,20,by=2)){          # Odd
  print(i)
}

for(i in seq(2,20,by=2)) {         # Even
  print(i)
}

for(i in LETTERS[1:4]){           # For uppercase letters
  print(i)
}

for(i in letters[1:4]){           # For lowercase letters
  print(i)
}

for(i in 1:20){                  # Even
  if(i%%2==0){
    print(i)
  }
}

k=1
for(i in 1:6){
  k=k*1
}
print(k)

#*************************************************************************************************************************************

#01/03/24

# Examples of FOR loop

#PQ: Create a data frame using while loop, In the data frame fill the details of the students, the no. of students against 
#which create a data frame which is taken from the user, the minimum  no. of students must be 3, the data frame cols are s.no, name, roll, gender and CGPA
#all are the user inputs

no_of_std<-as.numeric(readline())
df<-data.frame(Sno=c(), Name=c(), Rollno=c(), Gender=c(), CGPA=c())
count=1
while(count!=no_of_std+1) {
  Name=readline(prompt="Enter the name: ")
  Rollno=as.numeric(readline(prompt="Enter the Rollno: "))
  Gender=readline(prompt="Enter the gender: ")
  CGPA=as.numeric(readline(prompt="Enter the cgpa: "))
  df<-rbind(df,data.frame(Sno=c(count),Name=c(Name),Rollno=c(Rollno), Gender=c(Gender), CGPA=c(CGPA)))
  count=count+1
}
print(df)

#*******************************************************************************

#PQ: Consider a vector, values of the vector are 2,5,6,9,10,15,20  ,from this vector count the no. of even values

vect<-c(2,5,6,9,10,15,20)
even<-vect[vect%%2==0]
count<-length(even)
print(count)

#OR

a<-c(2,5,6,9,10,15,20)
count=0
for(i in a){
  if(i%%2==0){
    count=count+1
  }
}
print(count)

#*******************************************************************************

#PQ: Consider a vector the values of  vect=1,2,3,10,20, print the vect values if it encounters 10 then skip the value 10, other values should be print as it is.

n<-c(1,2,3,10,20)
for(i in n){
if(i==10){
  next
}
print(i)
}

#*******************************************************************************

# NESTED FOR loop
#for(i in range){
#  for (j in range){
#  }
#}

seq<-c(2,3,4,5)
seq1<-c(4,5,6,7)
for(i in seq){            #outer loop
  for(j in seq1){         #inner loop
    if((i+j)%%2==0){
      print(paste(i,j))
    }
  }
}

#PQ: Consider a matrix no.of rows are 3, col are 2, consider a empty matrix(all values are 0)->add the values in that matrix using nested for loop
# and also add the matrix
mat<-matrix(0,nrow=3, ncol=2)
sum=0
mat
for(i in 1:3){
  for(j in 1:2){
    mat[i,j]=i+j
    sum=sum+mat[i,j]
  }
}
mat
print(sum)

#PQ: consider a nested for loop , ranges for both loops 1 to 5, Sum of every value, print the values with text
