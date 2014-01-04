#baby laughter data wrangling
library(Hmisc)
library(zoo)

setwd("~/Dropbox/Baby Laughter/survey analysis")
source("babylaughter_Ordered_syntax_file.R")

#convert submit date string into a system recognised date format
data$submitdatetime<- as.POSIXct(data$submitdate,format="%d-%m-%Y %H:%M:%S")
#then fill in the missing values with average of before and after
data$numericsubmitdatetime<-as.numeric(data$submitdatetime)
#fill the last value in 
n<-length(data$numericsubmitdatetime)
data$numericsubmitdatetime[n]<-data$numericsubmitdatetime[1983]
#fill the blanks with the next value that comes after
data$numericsubmitdatetime<-na.locf(data$numericsubmitdatetime,na.rm=FALSE,fromLast=TRUE)
data$entrydate<- as.POSIXlt(data$numericsubmitdatetime,origin="1970-01-01")
data$daysold<-as.numeric(difftime(data$entrydate,data$dob),units="days")


#funniest toy data
funniesttoys = as.data.frame(matrix(ncol=1,nrow=1988)) 
funniesttoys = cbind(funniesttoys,data$daysold)
funniesttoys = cbind(funniesttoys,data$country)
funniesttoys = cbind(funniesttoys,data$sex)
funniesttoys = cbind(funniesttoys,data$q_54_01)
funniesttoys = cbind(funniesttoys,data$q_54_02)
funniesttoys = cbind(funniesttoys,data$q_54_03)
funniesttoys = cbind(funniesttoys,data$q_58_01)
funniesttoys = cbind(funniesttoys,data$q_58_02)
funniesttoys = cbind(funniesttoys,data$q_58_03)

colnames( funniesttoys ) <- c( "delete", "DaysOld","Country","Gender","Toys.1","Toys.2","Toys.3","Games.1","Games.2","Games.3" )
funniesttoys$delete<-NULL
funniesttoys<-funniesttoys[complete.cases(funniesttoys[,1:3]),]

wb <- loadWorkbook("funniest toys and games.xlsx", create = TRUE)
createSheet(wb, name = "Toys")
writeWorksheet(wb, funniesttoys, sheet = "Toys", startRow = 1, startCol = 1)
saveWorkbook(wb)


#funniest game data
funniestgames = as.data.frame(matrix(ncol=1,nrow=1988)) 
funniestgames = cbind(funniestgames,data$daysold)
funniestgames = cbind(funniestgames,data$country)
funniestgames = cbind(funniestgames,data$sex)


colnames( funniestgames ) <- c( "delete", "DaysOld","Country","Gender","Games.1","Games.2","Games.3" )
funniestgames$delete<-NULL
funniestgames<-funniestgames[complete.cases(funniestgames[,1:4]),]

wb <- loadWorkbook("funniest toys.xlsx", create = TRUE)
createSheet(wb, name = "Games")
writeWorksheet(wb, funniestgames, sheet = "Games", startRow = 1, startCol = 1)
saveWorkbook(wb)


plotanswers <- function (column, m, c) {
  sum(!is.na(column))
  plot(column,main=m, col=c,cex.axis=2, cex.main=2, cex.lab=2,ylab=NA)
}

getColName <- function(dat,colname){
  id<-getColIdx(dat,colname)
  attributes(dat)$variable.labels[id]
}
getColIdx <- function(dat,colname){
  idx<-1:279
  idx[names(dat)==colname]
}

plotquestion <- function (data, colname) {
  plot(data[colname],xlab="Rating",main=getColName(data,colname), col="yellowgreen")
}

#howmanylaughs
plotanswers(data$q_18, "How many laughs per day?", "pink")

#first laugh
which.min(data$firstLaughs_SQ001_SQ001)
#turns out there's a -1 entry. not sure how! remove it
data$firstLaughs_SQ001_SQ001[357]<-NA
summary(data$firstLaughs_SQ001_SQ001)

getColName(data,"firstLaughs_SQ003_SQ001")
hist(data$firstLaughs_SQ001_SQ001,xlab="Months",main="Age of first smile", col="turquoise",cex.axis=2, cex.lab=2,ylab=NA,cex.main=2)
hist(data$firstLaughs_SQ002_SQ001,xlab="Months",main="Age of first social smile", col="seagreen",cex.axis=2, cex.lab=2,ylab=NA,cex.main=2)
hist(data$firstLaughs_SQ003_SQ001,xlab="Months",main="Age of first deliberate smile", col="orchid",cex.axis=2, cex.lab=2,ylab=NA,cex.main=2)
hist(data$firstLaughs_SQ004_SQ001,xlab="Months",main="Age of first laugh", col="tomato",cex.axis=2, cex.lab=2,ylab=NA,cex.main=2)
hist(data$firstLaughs_SQ005_SQ001,xlab="Months",main="Age of first hysterics", col="pink",cex.axis=2, cex.lab=2,ylab=NA,cex.main=2)


getColName(data,"theoriesofLaugher_SQ001") 
plot(data$theoriesofLaugher_SQ001,xlab="Rating",main="Response to pleasant sensation", col="turquoise")
plot(data$theoriesofLaugher_SQ002,xlab="Rating",main="Response to surprise", col="seagreen")
plot(data$theoriesofLaugher_SQ003,xlab="Rating",main="Response to silly/unusual", col="orchid")
plot(data$theoriesofLaugher_SQ004,xlab="Rating",main="Because they are happy", col="tomato")
plot(data$theoriesofLaugher_SQ005,xlab="Rating",main="Release tension", col="pink")
plot(data$theoriesofLaugher_SQ006,xlab="Rating",main="Communication", col="lightgoldenrod")
plot(data$theoriesofLaugher_SQ007,xlab="Rating",main="Copying others", col="azure1")
plot(data$theoriesofLaugher_SQ008,xlab="Rating",main="Bond with caregiver", col="wheat1")
plot(data$theoriesofLaugher_SQ009,xlab="Rating",main="Fear averted", col="yellowgreen")
plot(data$theoriesofLaugher_SQ010,xlab="Rating",main="Response to exaggerated action", col="yellowgreen")
plot(data$theoriesofLaugher_SQ011,xlab="Rating",main="Knows he/she being naughty", col="yellowgreen")
plot(data$theoriesofLaugher_SQ012,xlab="Rating",main="Excitement", col="yellowgreen")


plot(data$q_11_SQ001,xlab="Rating",main="Mummy", col="yellowgreen")
plot(data$q_11_1,xlab="Rating",main="Daddy", col="yellowgreen")
plot(data$q_11_2,xlab="Rating",main="Brother", col="yellowgreen")
plot(data$q_11_3,xlab="Rating",main="Sister", col="yellowgreen")
plot(data$q_11_4,xlab="Rating",main="Grandma", col="yellowgreen")
plot(data$q_11_5,xlab="Rating",main="Grandpa", col="yellowgreen")
plot(data$q_11_6,xlab="Rating",main="Other family", col="yellowgreen")
plot(data$q_11_7,xlab="Rating",main="Friends (adults)", col="yellowgreen")
plot(data$q_11_8,xlab="Rating",main="Friends (children)", col="yellowgreen")
plot(data$q_11_9,xlab="Rating",main="Friends (babies)", col="yellowgreen")
plot(data$q_11_10,xlab="Rating",main="Strangers (adult)", col="yellowgreen")
plot(data$q_11_11,xlab="Rating",main="Strangers (children)", col="yellowgreen")
plot(data$q_11_12,xlab="Rating",main="Strangers (babies)", col="yellowgreen")
plot(data$q_11_13,xlab="Rating",main="Nursery", col="yellowgreen")
plot(data$q_11_14,xlab="Rating",main="Medical", col="yellowgreen")
plot(data$q_11_15,xlab="Rating",main="Pet dogs", col="yellowgreen")
plot(data$q_11_16,xlab="Rating",main="Pet cats", col="yellowgreen")
plot(data$q_11_17,xlab="Rating",main="Other pets", col="yellowgreen")



plotquestion(data,"q_16_1")
plotquestion(data,"q_16_2")
plotquestion(data,"q_16_16")
plotquestion(data,"q_16_19")
plotquestion(data,"q_16_17")
plotquestion(data,"q_16_20")
plotquestion(data,"q_16_21")
plotquestion(data,"q_16_22")
plotquestion(data,"q_16_18")
plotquestion(data,"q_16_4")


