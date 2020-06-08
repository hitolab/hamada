
kanzob = read.table("/Users/sakamoto2016-3/Documents/kenkyu/exceldata/kanzob.csv",sep = ",")
data.frame(kanzob) 
hajimekb = 1
owarikb = 49
gyokb = 25
transform(kanzob,V3=0)
transform(kanzob,V4=0)
for(i in 1:132){
  makb = mean(kanzob[hajimekb:owarikb,2])
  kanzob[gyokb,3] = makb
  kanzob[gyokb,4] = kanzob[gyokb,2] - makb
  #print(makb)
  hajimekb = hajimekb + 1
  owarikb = owarikb + 1
  gyokb = gyokb + 1
}

