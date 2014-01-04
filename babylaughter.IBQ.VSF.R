#infant behaviour questionnaire - very short form 

#answers found in columns "q_34_1" to "q_34_37"

for (i in 1:37){
  colidx<-paste("q_34_",i,sep="")  
  #convert to numbers
  data[,colidx]<-as.numeric(data[,colidx])
  #make the not applicables into NAs
  data[,colidx][data[,colidx]==8]<-NA
}
#reverse column 11
data$q_34_11r <- 8-data$q_34_11 

#compute surgency score (mean of these questions, ignoring blanks and Not Applicables)
data$ibq.sur <- rowMeans(subset(data, select = c(q_34_1, q_34_2, q_34_7, q_34_8, q_34_13, q_34_14, q_34_15, q_34_20, q_34_21, q_34_26, q_34_27, q_34_36, q_34_37)), na.rm = TRUE)
#compute negative affect
data$ibq.neg <- rowMeans(subset(data, select = c(q_34_3, q_34_4, q_34_9, q_34_10, q_34_16, q_34_17, q_34_22, q_34_23, q_34_28, q_34_29, q_34_32, q_34_33)), na.rm = TRUE)
#compute effortful control
data$ibq.eff <- rowMeans(subset(data, select = c(q_34_5, q_34_6, q_34_11r, q_34_12, q_34_18, q_34_19, q_34_24, q_34_25, q_34_30, q_34_31, q_34_34, q_34_35)), na.rm = TRUE)
  
