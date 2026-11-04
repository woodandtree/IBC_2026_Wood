#Section 3 Problem

#1
Scorpion <- read.table("C:/Users/woodZ/IBC_2026_Wood/Practials/W10/Pseudoscorpion_mating.tsv", header=T)

mean_s <- mean(Scorpion$Successful_broods[which(Scorpion$Treatment == "Single")])
mean_d <- mean(Scorpion$Successful_broods[which(Scorpion$Treatment == "Double")])

mean_dif <- mean_s-mean_d

#2

order <- sample(1:nrow(Scorpion), rep=F)
ScorpS_shuf <- Scorpion$Successful_broods[order]
ScorpS_shuf

#3
meanrS <- mean(ScorpS_shuf[which(Scorpion$Treatment == "Single")])
meanrD <- mean(ScorpS_shuf[which(Scorpion$Treatment == "Double")])

meanrdif <- meanrS-meanrD

#4

diffs <- c()

for(i in 1:diffs){
  order <- sample(1:nrow(Scorpion), rep=F)
  ScorpS_shuf <- Scorpion$Successful_broods[order]
  diffs[i] <- cor
}
  
***************************didnt finish**********
#5

n_ext <- sum(abs(diffs) >= abs(mean_dif))

#6

p <- n_ext/10000


