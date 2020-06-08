
shukyub = read.table("/Users/sakamoto2016-3/Documents/kenkyu/exceldata/shukyub.csv",sep = ",")
data.frame(shukyub) 
hajimesb = 1
owarisb = 49
gyosb = 25
transform(shukyub,V3=0)
for(i in 1:122){
  masb = mean(shukyub[hajimesb:owarisb,2])
  shukyub[gyosb,3] = masb
  hajimesb = hajimesb + 1
  owarisb = owarisb + 1
  gyosb = gyosb + 1
}
