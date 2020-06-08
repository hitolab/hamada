
kanzoa = read.table("/Users/sakamoto2016-3/Documents/kenkyu/exceldata/kanzoa.csv",sep = ",")
plot(kanzoa)
data.frame(kanzoa) 
kanzoa[,2]
summary(kanzoa)
summary(kanzoa[,2])
variance <- function(kanzoa) var(kanzoa)*(length(kanzoa)-1)/length(kanzoa)  
mean(kanzoa[,2])
var(kanzoa[,2])
sd(kanzoa[,2])
hajimeka = 1
owarika = 49
gyoka = 25
transform(kanzoa,V3=0)
for(i in 1:122){
  maka = mean(kanzoa[hajimeka:owarika,2])
  kanzoa[gyoka,3] = maka
  kanzoa[gyoka,4] = kanzoa[gyoka,2] - maka
  #print(maka)
  hajimeka = hajimeka + 1
  owarika = owarika + 1
  gyoka = gyoka + 1
}


