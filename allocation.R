#google kickstart
#projekt A Allocations
allocation <- function(budget,hauser){
  preis <- 0
  anzahl <- 0
 while(preis <=budget) {
  preis <- preis + min(hauser) 

   hauser <- hauser[-which.min(hauser)]
   anzahl <- anzahl +1
   
   
 }
  
  return(anzahl-1)
  
  
}
#1

mapply(allocation,c(Case1 = 100,Case2=50,Case3=30),list(c(20,90,40,90),c(30, 30, 10 ,10),c(900,900,900)))
#plates
t <- as.integer(readline())
strsplit("1"," ")
20*1:5
