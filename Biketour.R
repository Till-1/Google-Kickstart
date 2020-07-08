#google kicksatrt 2020 B 
#bike tour
input <-readLines(,n=9)



lis <- NULL
test <- as.integer(input[1])

for(m in 1:test){
  for(j in seq(2,test*2,2)){
  
    checkpoint <- 0
gipfel <- as.integer(input[j])

heights <- as.numeric(strsplit(input[j+1], " ")[[1]])

for(i in 2:(gipfel-1)){
 
  mitte <-heights[(i-1):(i+1)]
  if(which.max(mitte) == 2){
    checkpoint <- checkpoint +1
  }

}
lis <- append(lis, checkpoint)
}



print(paste0("Case #", test, ": ",lis[m]))
}
qt(0.975,5)




