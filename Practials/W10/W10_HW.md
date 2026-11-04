# Are most toads right handed?
## 1.
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
###### Output:
     Toad Sex N_trials N_rights
    1    T1   F       16       14
    2    T2   M       15       12
    3    T3   M       17        3
    4    T4   M       15       15
    5    T5   M       16       12
    6    T6   F       16       16
    7    T7   M       16       15
    8    T8   F       16       15
    9    T9   F       16        2
    10  T10   F       16       15
    11  T11   M       15       15
    12  T12   F       17       12
    13  T13   F       18       16
    14  T14   F       18        8
    15  T15   M       15       14
    16  T16   M       16       15
    17  T17   F       16        2
    18  T18   M       16        9
       Handedness
    1       Right
    2       Right
    3        Left
    4       Right
    5       Right
    6       Right
    7       Right
    8       Right
    9        Left
    10      Right
    11      Right
    12       None
    13      Right
    14       None
    15      Right
    16      Right
    17       Left
    18       None
## 2. 
    #the p_value is the sum of the mean probability of the extremes two sides of the equation combined together(is to high, above 1, so it must be the extreme of only on side
    #p_value <- p_right + p_left
    p_right
    P_left
    p_value
###### Output: 
    > p_right
    [1] 0.3977
    > p_left
    [1] 0.7737
    Both values are higher than 0.05 which means the according to the p_value we fail to reject the null hypothesis and the frog doesn't show handness
## 3.
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
###### Output: 
    > P_value
    [1] 0.6151
    The value is higher than 0.05 so there is no evidence that the gender affects handness. 

# Assortative Mating in Animals (A & W 4.10.1)
## 1. 
    jiang <- read.csv("C:/Users/woodZ/IBC_2026_Wood/Practials/W10/Jiang2013_data.csv", sep ="\t", header = TRUE, row.names = NULL)
    #read the csv, tell it it has a header, is tab seperated, and doesn't have row names


    mean_r <- function(taxon){
      mean(jiang$r[jiang$Taxon == taxon])
    }
    #create function named mean_r, for any taxon inputed, Ex. mammals, it reads and uses
    #find the mean of the data set for the r and look at the taxon of only those r's to filter out the correct mean
    #overall giving the r-values for the specific taxon selected

    mean_r("Fish")
    mean_r("Bird")
###### Output:
    > mean_r("Fish")
    [1] 0.3971901
    > mean_r("Bird")
    [1] 0.1317567
## 2.
    #fish_r is the specific r section of all the Taxon labeled Fish
    fish_r <- jiang$r[jiang$Taxon =="Fish"]
    f_mean <- mean(fish_r)
    #the mean of fish_r named F_mean

    number <- 50000
    #number of randomization
    rand_means <- c()
    #make an empty vector for the results

    for (i in 1:number){
      samp_f <- sample(jiang$r, size = length(fish_r), replace = FALSE)
      rand_means[i] <- mean(samp_f)
    }
    #for the fish in the randomization 
    #sample the r in the dataset and then look at the fish parts and draw random r-values and don't replace them

    #find the null hyptohesis using the p_value
    p_value <- mean(rand_means >= f_mean)
    p_value
###### Output: 
    > p_value
    [1] 0.00366
    The value is lower than 0.05 so there is reasonable results that the mean value of r of the fish is especially high. 
## 3. 
    taxa <- unique(jiang$Taxon)
    taxa
    #make it so all the different Taxon are known

    #code stay the same as above but changed it to be more generalized
    taxa_taxon <- function(taxon){
      taxon_r <- jiang$r[jiang$Taxon == taxon]
      t_mean <- mean(taxon_r)
  
      number <- 50000
      rand_means <- c()
  
      for(i in 1:number){
        samp_t <- sample(jiang$r, size = length(taxon_r), replace = FALSE)
        rand_means[i] <- mean(samp_t)
      }
  
      mean(rand_means >= t_mean)
    }

    taxa_taxon("Fish")
    taxa_taxon("Bird")
###### Output:
    > taxa_taxon("Fish")
    [1] 0.0035
    > taxa_taxon("Bird")
    [1] 0.99988

