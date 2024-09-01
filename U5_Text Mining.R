#26/04/24

#UNIT 5: TEXT MINING

install.packages("tm")          #all text mining functions
library(tm)
install.packages("SnowballC")   # Stemming documents
library(SnowballC)
install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)

#02/05/24

txt<-read.csv(file.choose())  #Text_data
txt
View(txt)
txtt<-iconv(txt$sentence)
corp<-Corpus(VectorSource(txtt))
inspect(corp[1:10])
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:10])
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:10])
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:10])
corp<-tm_map(corp,removeWords,stopwords("english"))
inspect(corp[1:10])
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:10])
corp<-tm_map(corp,stemDocument)
inspect(corp[1:10])
td<-TermDocumentMatrix(corp)
td
td<-as.matrix(td)
td
srt<-sort(rowSums(td))
srt
df<-data.frame(word=names(srt),freq=srt)
View(df)
wordcloud(df$word,df$freq,random.order= FALSE,rot.per = .30,min.freq = 1, max.words = 200,
          scale=c(4,1), colors = brewer.pal(5,"Dark2"))

#**********************************

#Eg:
string ="I love to sleep \n for 10 hours,9788,digit,1,#"
gsub(pattern="[[:cntrl:]]",replacement="",string)
gsub(pattern="[[:blank:]]",replacement="",string)
gsub(pattern="[[:punct:]]",replacement="",string)
gsub(pattern="[[:alnum:]]",replacement="",string)  #If you want to remove alphanumeric
gsub(pattern="[^[:cntrl:]]",replacement="",string)  #In case not to remove alphanumeric

#**********************************

#PQn: data --> text, First 20

txt1<-read.csv(file.choose())
txt1
View(txt1)
txtt1<-iconv(txt1$text)
corp<-Corpus(VectorSource(txtt1))
inspect(corp[1:20])
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:20])
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:20])
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:20])

corp<-tm_map(corp,gsub(pattern="[[:cntrl:]]",replacement="",corp))


corp<-tm_map(corp,removeWords,stopwords("english"))
inspect(corp[1:20])
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:20])
corp<-tm_map(corp,stemDocument)
inspect(corp[1:20])
td<-TermDocumentMatrix(corp)
td
td<-as.matrix(td)
td
srt<-sort(rowSums(td))
srt
df<-data.frame(word=names(srt),freq=srt)
View(df)
wordcloud(df$word,df$freq,random.order= FALSE,rot.per = .30,min.freq = 1, max.words = 200,
          scale=c(4,1), colors = brewer.pal(5,"Dark2"))


#PQ: Create a basic interactive line plot using plotting to visualize the trend of
#'sepal.length' column in the iris dataset

#***********************************************************************

#03/05/24

#Unit-6
#graphs

install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
head(AAPL,n=3)

#Scatter / Line
chartSeries(AAPL,type="line",subset="2007",theme=chartTheme("white"))

#Bar chart
chartSeries(AAPL, type="bar",subset='2007-05::2007-06',theme=chartTheme("white"))

#candlestick Chart -> displays open,high,low,close and vol colsing of the stock
chartSeries(AAPL,type="candlesticks",subset = '2007-05',
            up.col="black",dn.col="pink",
            theme=chartTheme("white"))

#Bollinger Band
chartSeries(AAPL, subset = '2007-05::2009-01',theme=chartTheme("white"))
addBBands(n=20,sd=2)

/#****************************************************************************

#PQns:

#1.
#Create a Bar Plot using plotly to display the count of each species in the iris Data Set

library(plotly)
View(iris)
plot_ly(iris,x=~Species)

#2.
#Create a Scatter plot using plotly to show the relationship between Petal.length and Petal.width
#and also provide the color according to different species in the iris data set

View(iris)
plt<-plot_ly(iris,x=~Petal.Length,y=~Petal.Width, color=~Species)
layout(plt,title="IRIS DATASET",xaxis=list(title="Length",color="red"),
       yaxis=list(title="Width",color="red"))

#3.
#Create a basic interactive line plot using plotly to visualize the trend 
#of sepal.length in the iris data set

View(iris)
plot_ly(iris,y=~Sepal.Length,type="scatter",mode="lines")  #Using scatter in type to represent line

#4.
#Create a list name of the list is My List with 3 elements as name the vectors as numeric, char,logical,
#1.check whether the char vector is equal to 3 or not
#2.Extract the 2nd element from  the numeric vector in this list
#3.Create a new list named as filter list that contains only the numeric value of My List
#4.combine the char vectors of My list to a single string


My_List <-list(numeric = c(1,2,3),char = c("a","b","c"),logical=c("TRUE","FALSE","TRUE"))
My_List

char_vect <- length(My_List$char) == 3
cat("Is equal or not?", char_vect, "\n")

num_vect <-My_List$numeric[2]
cat("second element:",num_vect,"\n")

filter_list<-list(numeric = My_List$numeric)
cat("Filter List: ",filter_list,"\n")

comb_char<- paste(My_List$char, collapse="")
cat("Combined Char: ",comb_char,"\n")
