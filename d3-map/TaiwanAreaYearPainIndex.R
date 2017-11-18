## 讀取資料
result<-read.table("/Users/paiyuliu/Downloads/zip_address.tsv",header=TRUE)
colnames(result)
View(result)
result2<-result[which(result$isGovernmentAddress=="Y"),]
View(result2)

## 製做模擬資料
length(result2$rowname)
ls(result2)

result<-read.csv("/Users/paiyuliu/Downloads/zip_address.csv",header=TRUE)

colnames(result2)
nrow(result2)
View(result2)
length(result2$isGovernmentAddress)


rm(yearVector)

yearVector<-cbind(rep("all",nrow(result2)),result2)
colnames(yearVector)<-c("year","zip_name","isGovernmentAddress","zip_code","latitude","longitude")

tmp2017<-cbind(rep("2017",nrow(result2)),result2)
colnames(tmp2017)<-c("year","zip_name","isGovernmentAddress","zip_code","latitude","longitude")

tmp2016<-cbind(rep("2016",nrow(result2)),result2)
colnames(tmp2016)<-c("year","zip_name","isGovernmentAddress","zip_code","latitude","longitude")

tmp2015<-cbind(rep("2015",nrow(result2)),result2)
colnames(tmp2015)<-c("year","zip_name","isGovernmentAddress","zip_code","latitude","longitude")

tmp2014<-cbind(rep("2014",nrow(result2)),result2)
colnames(tmp2014)<-c("year","zip_name","isGovernmentAddress","zip_code","latitude","longitude")


yearVector<-rbind(yearVector,tmp2017)
yearVector<-rbind(yearVector,tmp2016)
yearVector<-rbind(yearVector,tmp2015)
yearVector<-rbind(yearVector,tmp2014)



yearVector$painIndex<-sample(5:15,size = nrow(yearVector),replace=T)
View(yearVector)


# Write CSV in R
write.csv(yearVector, file = "/Users/paiyuliu/Documents/d3Pr/d3-map/zip_address.csv")











yearVector<-c(yearVector,rep("2017",nrow(result2)),result2)
View(data.frame(yearVector))
yearVector<-c(yearVector,rep("2016",nrow(result2)),result2)
yearVector<-c(yearVector,rep("2015",nrow(result2)),result2)
yearVector<-c(yearVector,rep("2014",nrow(result2)),result2)

View(data.frame(yearVector))
class(yearVector)
result3


xVector=c(1:15)
result2$painIndex<-sample(xVector, size=20, replace = TRUE)

write.csv(result2[,c(1,2,3,4,5,6)],file="/Users/paiyuliu/Documents/d3Pr/d3-map/zip_address.csv")
View(result2)

colnames(result2)


sample(x, size, replace = FALSE, prob = NULL)