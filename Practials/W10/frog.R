frog <- read.table(header=TRUE, "C:/Users/woodZ/IBC_2026_Wood/Practials/W10/Toad_Handedness.tsv")
#read the table
frog$Handedness <- NA
#make a place to put the results of the below Rght v Left code 

# Go through each toad one at a time
for (i in 1:nrow(frog)) {
  trial <- frog$N_trials[i]
  rights <- frog$N_rights[i]
#for i, one frog, in each row of frog
  #for each frog look at the number of trials and number of rights and name them trial and rights
  
  number <- 10000
#set the amount of trial to be run
  
  simulation <- c()
#make an empty vector for results
  
#?runif -> discovered this function it randomly generates number between 0 and 1, could figure out the order stuff for this problem

  for(s in 1:number){
    x <- runif(trial)
    frog2 <- sum(x > 0.5)
    simulation[s] <- frog2
  }  
#in the repeated 10000 times simulation make trial a random number
#count the amount of times that number is above 0.5 this means its right handed
#store the this number in the simulations

  p_right <- mean(simulation >= rights)
  p_left  <- mean(simulation <= rights)
#take the mean of both the right and left to look at the proportion of simulation where there is more right handness
  
  if (p_right < 0.05) {
  frog$Handedness[i] <- "Right"
  } else if (p_left < 0.05) {
    frog$Handedness[i] <- "Left"
  } else {
    frog$Handedness[i] <- "None"
  }
}
#if the p_right is less than 0.05 it is right, if left is more than 0.05 it is left, if niether applies it is none
frog
#print the table

#the p_value is the sum of the mean probability of the two sides of the equation combined together
p_value <- p_right + p_left
p_value
p_right
p_left

#inital finding of the mean difference looking at the mean for the male and female and then finding the difference
meanF <- mean(frog$Handedness == "Right" & frog$Sex =="F")
meanM <- mean(frog$Handedness == "Right" & frog$Sex == "M")
meanMFdiff <- meanF-meanM
meanMFdiff

#randomize it
number <- 10000
#give it an amount of trials
randMF_diff <- c()
#give it a vector to put the results in

#for the frog in the trials
#randomly pick items from the vector Sex in frog and name it 
#calculate the mean difference looking at the shuffled sex
#input the mean difference found into the empty vector
for (i in 1:number) {
  shuffled_sex <- sample(frog$Sex)
  diffMF_i <- mean(frog$Handedness == "Right" & shuffled_sex =="F") - mean(frog$Handedness == "Right" & shuffled_sex == "M")
  randMF_diff[i] <- diffMF_i
}
#find the null hyptohesis using the p_value
P_value <- mean(abs(randMF_diff) >= abs(meanMFdiff))
P_value
