
data = read.table("/Users/sakamoto2016-3/Documents/kenkyu/test.csv",sep = ",")
plot(data)
data.frame(data) 
data[,2]
summary(data)
summary(data[,2])
variance <- function(data) var(data)*(length(data)-1)/length(data)  
mean(data[,2])
var(data[,2])
sd(data[,2])
hajime = 1
owari = 49
for(i in 1:147){
  a = mean(data[hajime:owari,2])
  print(a)
  hajime = hajime + 1
  owari = owari + 1
}
