w <- rep(0,7000)
for (j in 1:7000){
  t <- c(1:50)
  for (i in 1:49){
    q <- sample(t,2)
    a <- q[1]; b <- q[2]; c <- abs(a-b)
    t <- t[-which(t==a)]
    len1 <- length(t)-50 + i
    if(len1 < 0) t <- c(t,rep(a,abs(len1)))
    t <- t[-which(t ==b )]
    len2 <- length(t) - 49 +i
    if(len2 < 0) t <- c(t,rep(a,abs(len2)))
    t[length(t) + 1] <- c
    if(length(t) == 1) w[j] <- t
  }
}

