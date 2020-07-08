rounds <- as.numeric(readline())
score <- integer(rounds)

for(Round in 1:rounds){

  K <- as.numeric(strsplit(readline()," ")[[1]])[2]
  v <- as.numeric(unlist(strsplit(readline(), " ")))

  maxdif <- function(vek){
    maxi <- which.max(vek[2:length(vek)] - vek[1:(length(vek)-1)])
    maxdiff <- vek[1+maxi] - vek[maxi]
    return(c(maxi, maxdiff))
  }
  
  Grenzen <- NULL
  
  for(i in 1:K){
    v_man <- sort(c(v, Grenzen))
    a <- maxdif(v_man)
    upper <- v_man[a[1] + 1]
    lower <- v_man[a[1]]
    
    if(a[2] == 1){
      break
    }
    
    lower_fix <- max(v[v <= lower])
    upper_fix <- min(v[v >= upper])
    
    Gr_rem <- Grenzen[Grenzen > lower_fix & Grenzen < upper_fix]
    
    if(length(Gr_rem) == 0){
      Grenzen <- c(Grenzen, round(lower_fix + (upper_fix - lower_fix)/2))
    }
    
    else{
      anzahl <- length(Gr_rem)
      Grenzen <- Grenzen[!(Grenzen %in% Gr_rem)]
      Grenzen <- c(Grenzen, lower_fix + round((upper_fix-lower_fix)*(1:(anzahl+1))/(anzahl + 2)))
    }
  }
  print(paste0("Case #", Round, ": ",maxdif(sort(c(v,Grenzen)))[2]))
}
