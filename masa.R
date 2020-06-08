
shukyua = read.table("/Users/sakamoto2016-3/Documents/kenkyu/exceldata/shukyua.csv",sep = ",")
data.frame(shukyua) 
hajimesa = 1
owarisa = 49
gyosa = 25
transform(shukyua,V3=0)
for(i in 1:122){
  masa = mean(shukyua[hajimesa:owarisa,2])
  shukyua[gyosa,3] = masa
  hajimesa = hajimesa + 1
  owarisa = owarisa + 1
  gyosa = gyosa + 1
}
