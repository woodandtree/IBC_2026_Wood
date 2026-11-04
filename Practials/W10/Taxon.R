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


##find the null hyptohesis using the p_value
p_value <- mean(rand_means >= f_mean)
p_value


taxa <- unique(jiang$Taxon)
taxa
#make it so all the different Taxon are known

#code stay the same as above but changed it to be inputable
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
