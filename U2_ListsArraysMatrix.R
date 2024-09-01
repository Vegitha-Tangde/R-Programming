# 01/02/24

# LIST

a<-c(8,6,10,15,20)
b<-"Hello"
c<-4+4i
d<-c("hello", "hi")
list1<-list(a,b,c,d)  #Gives the list of the values in a,b,c,d
list1
list2<-list(c("hello","hi"),"hey",4+4i,c(1,2,3))  # executing all data types at once
list2

#Nested lists
list3<-list(c("hello","hi"),"hey",4+4i,list(c(1,2,3),"Hello",8+8i,4L))
list3

#accessing elements of the list
list3[2]
list3[[4]][2] #first[] is the main index and second is sub index

c<-c(1,10,20,30)
d<-"str"
e<-c("str1","str2","str3")
f<-c(3+2i,4+5i,6+7i)
g<-list("hello",c(3L,4L),2i)
list4<-list(c,d,e,f,g)
list4
list4[[3]][2]

#deleting complete index(temporary)
list4[[3]]<-NULL
list4
list4[[1]][-2]

#Updating or adding values to the list
list4[[5]]<-c(2L,3L,4L)
list4

#assigning names to the indexes
list4<-list("int"=c,"str"=d,"str1"=e,"compl"=f,"vect"=g)
list4
list5<-list(c(1,2,3),"hello",4+4i,2L)
list5
names(list5)<-c("integer","string","complex","literals")
list5

#modifying the list
list5[["numeric"]]<-c(4,10,20,30)
list5

#accessing values with named index
list5$complex
list5$`complex`

#converting list to vector-converts into string(Char) BCoz of its high precedence
unlist(list5)

#naming directly
list6<-list(a=10,b=20,c=30)
list6

#adding numeric values of a list
with(list6,a+b+c)
within(list6,d<-a+b+c)  #assigns new vector which is the addition of the list

# 02/02/24

#PQ1: Create a vector with four elements in which one element is list and then check its datatype
list1<-c(1,2,3,list("abc","xyz"))
list1
class(list1)

#PQ2:
vec=list("Destiny"="Newyork","Dimension"=c(2,6,9),"cost"=c(12.99))
vec
class(vec)


# ARRAYS
      #- Stores same type of data - can be multidimensional

#simple array(1D)
array1<-array(c(1:10),dim=c(3,4,2))  # Here 2 is no.of matrices
array1
class(array1)
array1<-array(c(1:10),dim=c(3,4))

vect1<-c(1,2,3,10)
vect2<-c(2,5,10)
array2<-array(c(vect1,vect2),dim = c(2,3,2))   # dim->dimension
array2
class(array2)
mat.names<-c("Mat1","Mat2") # naming the matrices
row.names<-c("row1","row2")
col.names<-c("col1","col2","col3")
array2<-array(c(vect1,vect2),dim = c(2,3,2),dimnames =list(row.names,col.names))
array2
array2[1,2,]
class(array2[1,2,])
array2[1,2,2]
array2[1,,1]
class(array2[1,,1,drop=FALSE]) # drop->gives the data type
array2[1:2,1:2,]      # accessing continuous rows nd col
array2[c(1,3),]       # accessing non-continuous rows nd col

#08/02/24
#PQ:
array3<-array(c(5,10,2,15,20,30,16,65,90),dim=c(3,3,3),dimnames=list(row.names,col.names,mat.names))
array3
row.names<-c("row1","row2","row3")
col.names<-c("col1","col2","col3")
mat.names<-c("Mat1","Mat2","Mat3")
array3[1:2,1:2,1]<-1000
array3
array3[,c(1,3),]

arr<-array((1:10),dim=c(2,5))
arr
attributes(arr)          #Array and Vectors differ by dimensions
b<-1:10
b
attributes(b)
arr==b
all.equal(arr,b)  #Checks everything is equal or not
dim(b)<-c(2,5)
b
all.equal(arr,b)

# Qns on Arrays-Operations
arr1<-array(c(1:10),dim=c(2,4,2))
arr1
arr2<-array(c(11:20),dim=c(2,4,2))
arr2
arr1+arr2
arr1-arr2
arr1*arr2
arr1/arr2
arr1%%arr2
arr1%/%arr2

# MATRIX

mat1<-matrix((1:9),nrow=3,ncol=3)
mat1
mat1<-matrix((1:9),nrow=3,ncol=2)  # gives the output with a warning msg
mat1
mat1<-matrix(c(10,20,30,40,50,60,70,80,90),nrow = 3,ncol = 3)  #can also use data=c()
mat1
mat1<-matrix(c(10,20,30,40,50,60,70,80,90),nrow = 3,ncol = 3,byrow=TRUE)
mat1
row.names<-c("r1","r2","r3")
col.names<-c("c1","c2","c3")
mat1<-matrix(c(10,20,30,40,50,60,70,80,90),nrow = 3,ncol = 3,byrow=TRUE,dimnames = list(row.names,col.names))
mat1
mat1[1,2]
mat1[1:2,1:2]
mat1[c(1,3),]
mat1[,c(1,3)]
mat1[1:2,1:2]<-100
mat1

#other ways to create matrix
Q<-1:9
mat2<-matrix((Q),nrow = 3,ncol = 3)
mat2
mat2<-matrix((Q),3,3)
mat2
mat3<-matrix(1,2,3)
mat3

# Creating Square Matrix
mat4<-matrix(5,5,5)      
mat4

#Transpose of a matrix
mat1<-matrix((1:9),nrow=3,ncol=2)
mat1
mat2<-t(mat1)
mat2

# %*% ->multiply matrix with its transpose
mat1 %*% mat2

#PQ:
m1<-matrix((1:10),nrow=2,ncol=4)
m1
m2<-matrix((11:20),nrow=2,ncol=4)
m2
m1+m2
m1-m2
m1*m2
m1/m2
m1%%m2
m1%/%m2

#09/02/24
#PQ:
m1<-matrix(c(2,3,4,10,20,30,50,60,70),nrow=3,ncol=3)
m1
row.names<-c("r1","r2","r3")
col.names<-c("c1","c2","c3")
m1
m1<-matrix(c(2,3,4,10,20,30,50,60,70),nrow=3,ncol=3,dimnames = list(row.names,col.names))
m1




mat1<-matrix((1:9),nrow=3,ncol=3)
mat1
dim(mat1)<-NULL
mat1
as.vector(mat1)    # to convert mat to vector
a<-as.vector(mat1)
a
class(a)


# rbind and cbind

r1<-c("r1","r2","r3")
c1<-c("c1","c2","c3")

mat1<-matrix((1:9),nrow=3,ncol=3,dimnames=list(r1,c1))
mat1

mat2<-rbind(mat1,r4=c(10,20,30)) # adding row elements to the matrix
mat2

mat3<-cbind(mat2,c4=c(50,60,70,80))  # adding col elements to the matrix
mat3