#16/02/24

# FACTORS - divides the data into categories

vect<-c("Male","Female","Male","Male","Female","Transgender")
factor(vect)
bloodgroup<-factor(c("A","A+","O","A","A","B"))
bloodgroup
bloodgroup[3]
bloodgroup[2:4]
bloodgroup[5]<-"O"
levels(bloodgroup)

#22/02/24

#removing index
bloodgroup[-4]
bloodgroup[3]<-"A"
bloodgroup

#Adding levels in function
levels(bloodgroup)<-c(levels(bloodgroup),"X")
bloodgroup

#replacing the values
bloodgroup[3]<-"X"
bloodgroup

gender<-factor(c("Male","Female","male","Female"))
gender
#gl(n,k,labels)       gl->generating labels
#n=no of values for factor
#k=no of times you want to repeat each value
#labels=vector you are considering to create a factor
gl(4,2,labels = c("X","Y","Z","A"))

#PQ1
vect1<-c("A","B","C","D")
vect1
vect2<-c(1,2,3,4)
vect2
gender<-factor(c("Male","Female","male","Female"))
gender
fact1<-factor(c("DataScience","ML","AI","FullStack"))
fact1
list1<-list(Name=vect1,Rollno=vect2,Gender=gender,Stream=fact1)
list1
data.frame(list1)

#PQ2

num1=readline(prompt = );
int1=readline(prompt = );
char1=readline(prompt = );


num1 = as.numeric()
int1 = as.integer()
char1 = as.character()

list1<-list(num1,int1,char1)
list1
compl<-as.complex(readline())
list1[["complex"]]<-compl
list1
