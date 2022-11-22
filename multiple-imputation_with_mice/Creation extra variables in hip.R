#MAR smoking variable
data$smoking[data$sex == 1] = 
  sample(c(1, 0, NA), 
         sum(data$sex == 1), 
         replace = TRUE,
         prob = c(0.1, 0.5, 0.4))

data$smoking[data$sex == 0] = 
  sample(c(1, 0, NA), 
         sum(data$sex == 0), 
         replace=TRUE, prob = c(0.15, 0.75, 0.1))
data$smoking = factor(data$smoking)


#occupation correlated to outcome
data$occupation = ifelse(data$ohsdiff>median(data$ohsdiff), 1 ,0)

#Export 
#write.csv(data,"hip.csv", row.names = FALSE)