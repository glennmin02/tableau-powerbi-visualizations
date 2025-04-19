submitted<-read.csv(file=file.choose(),header=TRUE,stringsAsFactors=TRUE)
incomplete<-read.csv(file=file.choose(),header=TRUE,stringsAsFactors=TRUE)

total<- merge(submitted,incomplete,by="Email",all=TRUE)

#Exporting into excel
install.packages("writexl")
library(writexl)
write_xlsx(total,"C:/Users/SHINS8/Documents/ERAU/Courses/COIN496/total.xlsx")