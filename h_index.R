j <- as.integer(readline())
papers <- as.integer(readline())
quotations <- as.integer(strsplit(readline()," ")[[1]])
lis <- vector()
score<- 0
system.time(for( i in 1:papers){
  publish <- quotations[1:i]
  if(length(publish[publish>score])>score){
    score <- score +1
    lis <- append(lis,score)
  }else{
    lis <- append(lis,score)
  }
  
  
})

cat(paste0("Case#",j,":"),lis)
quotations <- sample(1:10^5,10^5,replace = T)
papers <- 10^5
input <- readLines(,n=5)[3]
strsplit(readline()," ")[[1]]
tests <- as.integer(input[1])
papers <- as.integer()
