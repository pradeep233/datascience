x<-1
print(x)
x

x<-2;y<-12;
print(x+y)

install.packages("plyr",dependencies=TRUE)


print(num1)


msg<- 5 ## Hello
msg
msg

y<-c(0,"Hello")
str(y)

x<-list(1,"c",TRUE)
x
str(x)

x<-c(1,3,4,5,NaN)
x
is.nan(x)
is.na(x)
y<-c("a","b",NA,"","c")
y
is.na(y)
is.nan(y)


y<-data.frame(a=1,b="a")
y
xx<-dput(y)
xx


x<-list(a=list(1,2,3),b=c(3.14,2.81))
x


x<-matrix(1:6,2,4)
x
y<-matrix(rep(10,4),2,2)
y

x<-4
class(x)


x <- c(1,3, 5)
y <- c(3, 2, 10)
xy<-rbind(x,y)
xy
str(xy)
length(xy)


x <- list(2, "a", "b", TRUE)
str(x[[1]])

x <- 1:4

y <- 2:3

str(x+y)


x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x
getwd()
setwd(C:\Users\kothakop\datascience)
d<-read.csv("hw1_data.csv",nrows=2)
d
names(d)
df<-as.data.frame(d,nrows=2)
df
con<-file("hw1_data.csv")
x<-readLines(con,2)
print(x)

con<-read.csv("hw1_data.csv")
con
print(x)

data<-read.csv("hw1_data.csv")
nrow(data)
d
df<-read.csv("hw1_data.csv",skip=151)
df

df <- read.csv("hw1_data.csv", header=FALSE, skip=153-2)
df

df <- read.csv("hw1_data.csv",header=TRUE,nrow=1,skip=46)
df

f <- read.csv("hw1_data.csv")
df<-as.data.frame(f)
df
df$Ozone
z<-is.na(df$Ozone)
z
rr<-sum(z)
rr
ozna<-mean(df$Ozone,na.rm=T)
ozna

e10<-subset(df,df$Ozone>31 & df$Temp>90,select=c(Ozone,Solar.R,Temp))
e10

e10<-subset(df,df$Ozone>31 & df$Temp>90,select=c(Solar.R))
e10
em<-mean(e10)


em1<-lapply(e10, mean, na.rm = TRUE)
em1

em2<-sapply(e10, mean, na.rm = TRUE)
em2
em3<-colmeans(e10, na.rm =  TRUE)
em3
df
e11<-subset(df,df$Month==6 ,select=c(Temp))
em11<-lapply(e11, mean, na.rm = TRUE)
em11


install.packages("KernSmooth")
library(KernSmooth)

e12<-subset(df,df$Month==5 ,select=c(Ozone))
em12<-lapply(e12, max, na.rm = TRUE)
em12




x<-c("a","b","c","d")

x

#for loop
for (i in x)
{print(i)}


for (i in 1:4)
{print(x[i])}

#while loop

count<-0

while (count<10)
{
  print(count)
  count<-count+1  
  
}



View(airquality)

#functions

requirement is to write function to get mean values from all individual columns

columnmean<- function(data,removeNA=TRUE)
{
  nc<-ncol(data)
  colnames<-names(data)
  mn<-numeric(nc)
 for(i in 1:nc)
 {
   mn[i]<-mean(data[,i],na.rm=removeNA)
  
 }
  mn
}


f<-function(x,y)
{
  x+y/z
  
}

f(2,4)


#Lexical scoping

make.power<-function(n)
{
  
  pow<-function(x)
  {
    x^n
  }
  pow
}

cube<-make.power(3)
square<-make.power(2)
cube(3)
square(2)


y<-10

f<-function(x)
{
  y<-2
  y^2+g(x)
  
}

g<-function(x)
{
x*y  
  
}

f(3)

path<-"C:/Temp"
setwd(path)
getwd()
read.csv("")


cube <- function(x, n) {
        x^3
}

cube(3)

x <- 1:10
if(x > 5) {
        x
}

x

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

z <- 10
f(3)


x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}

y


h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

z <- 10
f(3)


x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}

y










