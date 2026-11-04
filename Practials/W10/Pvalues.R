setwd("C:\Users\woodZ\IBC_2026_Wood\Practials\W10")

right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=18, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

right_ct

table(right_ct)

probs <- table(right_ct)/nExp

barplot(probs, xlab="Number of Rights", ylab="Proportion of Simulations")

probs[1:5]

probs[14:18]

p_val <- sum(c(probs[13:17], probs[0:5])+2/nExp)
p_val
