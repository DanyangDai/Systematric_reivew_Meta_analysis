### handly functions for data extraction. 


81-67
82-66

pooled_var <- function(n1=1,n2=1,n3=1,n4=1,s1=0,s2=0,s3=0,s4=0){
  
  s_pooled <- sqrt(((n1-1)*s1^2 + (n2-1)*s2^2 +(n3-1)*s3^2 + (n4-1)*s4^2)/(n1+n2+n3+n4))
  
  return(s_pooled)
}

pooled_mean <- function(mean1=NA, n1=NA, mean2=NA,n2=NA,mean3=NA,n3=NA,mean4=NA,n4=NA){
  pooled_mean <- sum(mean1*n1,mean2*n2,mean3*n3,mean4*n4,na.rm = T)/sum(n1,n2,n3,n4,na.rm = T)
  return(pooled_mean)
}

## Age sometime is reported as interquartile range which cannot calculate pooled SD 

pooled_var(n1 = 11,s1=14, n2=37, s2=16)

pooled_mean(n1=11, mean1=73,n2=37,mean2=73)
