# google kickstart 2020 B
#Bike tour 
input <- readLines(,n= 7)
test <- as.integer(input[1])
output<- NULL
for (i in 1:test ){
  
    for (j in seq(2,test*2,2))  {
     input2 <- as.numeric(strsplit(input[j]," ")[[1]]) 
      busse <- input2[1]
      maxtage <- input2[2]
      tage <- as.numeric(strsplit(input[j+1]," ")[[1]])
      lis <- NULL
      if(maxtage==1){
        lis <- append(lis,maxtage)
      }else{
      
      for(l in 1:(busse-1)){
       
      fahrten <- seq(tage[l],maxtage,tage[l])
      vergleich <- floor(maxtage/(tage[l+1]))
      vergleich <- vergleich * tage[l+1]
      
      
      maxx <- max(fahrten[fahrten<=vergleich])
       lis <-  append(lis,maxx)
        
        
        
      }
        lis <- append(lis,max(seq(tage[l+1],maxtage,tage[l+1]))) 
      }
      
      output <- append(output,min(lis))
      
    }
  
  
  
  
  
  print(paste0("Case #", i, ": ",output[i]))
  
}

a <- c(3,6,9)
b <- c(7,14)
a[a<b]
