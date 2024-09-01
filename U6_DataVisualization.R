#15/04/24    [ Also Refer the notes ]

#Unit-6 DATA VISUALIZATION WITH R

#BASIC TYPES OF GRAPHS

#Scatter Plotting
vect1<-c(2,3,4,6,8)
vect2<-c(20,30,40,50,60)
plot(vect1,vect2)
plot(vect1,vect2,xlab="x-axis",ylab="y-axis",col="red",cex=2)
plot(vect1,vect2,xlab="x-axis",ylab="y-axis",col=c(1:5),cex=2,
     type="b",pch=LETTERS[1:5])  

vect1<-c(2,3,4,6,8)
vect2<-c(20,30,40,50,60)
png(file="scatt.png")
plot(vect1,vect2,xlab="x-axis",ylab="y-axis",col="red",cex=2,ylim=c(20,80),main="SCATTER PLOT",
     col.main="blue",font.main=4)
dev.off()
vect3<-c(4,5,6,7,8)
vect4<-c(30,40,50,70,20)
points(vect3,vect4,col="blue")

#*******************************************************************************

#22/04/24

#Multi Line Graph
#line-->(scatter)
v1<-c(2,3,4,5,6)
v2<-c(3,4,5,6,7)
v3<-c(4,5,6,7,8)
plot(v1,xlab="x-axix",ylab="y-axix",col="red",type="l",lwd=2,lty=2)
lines(v2,col="green",lwd=2,lty=3)
lines(v3,col="blue",lwd=2,lty=4)


#Bar plot

years<-c(2020:2023)
csest<-c(4000,5500,7000,9000)
barplot(csest,years,names.arg=years,xlab="Years",ylab="Students",main="LPU",
        col.main="orange",col=c(3:7))
legend("topleft",legend = years,fill=c(1:4),lty=1,pch=1)


#Stacked barplot, Besides barplot

mat<-matrix(1:9,nrow=3)
mat
barplot(mat,names.arg=c("A","B","C"),col=c(3:5),beside=T)


#Qn: Create besides barplot, add legends, Names rows ->grp1 And grp2 to the given data frame

data<-data.frame(A=c(0.2,0.4),
                 B=c(0.3,0.1), C=c(0.7,0.1),
                 D=c(0.1,0.2), E=c(0.3,0.3))
data<-as.matrix(data)
data
r1<-c("Group1","Group2")
barplot(data,names.arg=c("A","B","C","D","E"),col=c("black","pink"),beside=T)
legend("topleft",legend = r1,fill=c("black","pink"))

#*******************************************************************************

#25/04/24

#Pie-Chart

vect<-c(2,5,20,30,40)
label=c("A","B","C","D","E")
pie(vect,labels=label,col=c(1:5))

install.packages("plotrix")          #To convert into 3D 
library(plotrix)
pie3D(vect,labels=label,col=c(1:5))


#ggplot

install.packages("ggplot2")
library(ggplot2)

View(iris)
ggplot(data=iris)                                        #1st layer (Data Layer)
ggplot(data=iris,aes(x=Sepal.Length,                     #Aesthetic Layer(2)
            y=Sepal.Width,shape=Species,col=Species))+
            geom_point()+facet_wrap(~Species)+           #lm->linear Regression   
            geom_smooth(method="lm")+coord_cartesian(xlim=c(4,8),ylim=c(2.5,5))+
            theme(axis.text=element_text(colour="violet",size=14))

#Barplot using ggplot
View(iris)
ggplot(data=iris)
ggplot(data=iris,aes(x=Sepal.Length))


#Qn:
View(iris)
data<-data.frame(group=LETTERS[1:5],value=c(13,7,9,21,2))
ggplot(data,aes(x="",y=value,fill=group))+geom_bar(stat="identity")+
  coord_polar(theta="y",start=0)+scale_fill_brewer(palette="dark2")

#*******************************************************************************

#26/04/24

#plotly

install.packages("plotly")
library(plotly)
View(mtcars)
df<-mtcars
name<-row.names(df)
ply<-plot_ly(mtcars,x=~cyl,y=~disp,text=name,color = ~factor(cyl))
layout(ply,title="MTCARS",xaxis=list(title="Cylinder",color="red"),yaxis=list(title="dispcmnt",color="red"))

#Qn: Barplot using plotly, type=bar

a=c("beverage","vegetable","dairy")
b=c(20,14,25)
plot_ly(x=a,y=b,type="bar",color= I(c("orange","blue","yellow")))


#Qn: 

Parts<-c("beverage","vegetable","dairy")
Sales_2019<-c(20,14,23)
Sales_2020<-c(12,18,29)
fg<-plot_ly(x=Parts,y=Sales_2019,type="bar",name="SALES_2019",color = I("pink"))
fg
library(dplyr)
fg%>%add_trace(y=Sales_2020,name="SALES_2020",color=I("black"))

#Qn: Create a basic barplot using plot_ly to display the count of each species in the 'iris' data set

View(iris)
plot_ly(iris,x=~Species,y= ~ ,type="bar")
