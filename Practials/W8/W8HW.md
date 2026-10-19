
## Disease Risks
#### 1. 
    > setwd("~/W8")
###### Puts us in the correct folder
    > geno <- read.table("H938_Euro_chr6.geno", sep=" ", header=T)
###### names the data geno and reads the table, while also saying it is seperated by spaces and does have a heading
    > str(geno)
      'data.frame':	43141 obs. of  7 variables:
       $ CHR  : int  6 6 6 6 6 6 6 6 6 6 ...
       $ SNP  : chr  "rs4959515" "rs719065" "rs6596790" "rs6596796" ...
       $ A1   : chr  "A" "A" "C" "A" ...
       $ A2   : chr  "G" "G" "T" "G" ...
       $ nA1A1: int  0 0 0 0 5 0 0 0 0 1 ...
       $ nA1A2: int  17 26 4 22 39 3 1 21 1 1 ...
       $ nA2A2: int  107 98 119 102 80 121 123 103 123 121 ...
###### shows whats inside the file
    > max(geno$nA1A1 + geno$nA1A2 + geno$nA2A2)
        [1] 124
###### max finds the max value and then using the pluses it adds the max of all the seperate things together
#### 2.
    > max(rowSums(geno[, c("nA1A1", "nA1A2", "nA2A2")]))
###### the max amount of the row summed together from geno, the rows being the ones listed
#### 3. 
    > risks <-read.csv("C:/Users/woodZ/IBC_2026_Wood/Practials/W8/SNP_risks.csv", header=T)
###### read the risks file and name it risks
    > risks36 <- risks[,3]
###### extract the 3rd column of risks and name it risks36
    > geno_risks <- cbind(geno, risks = risks36) 
###### bind geno with the risks36 part of risks and name it geno_risks
    > head(geno_risks)
     CHR        SNP A1 A2 nA1A1 nA1A2 nA2A2    risks
      1   6  rs4959515  A  G     0    17   107 Non-Risk
      2   6   rs719065  A  G     0    26    98 Non-Risk
      3   6  rs6596790  C  T     0     4   119 Non-Risk
      4   6  rs6596796  A  G     0    22   102 Non-Risk
      5   6  rs1535053  G  A     5    39    80 Non-Risk
      6   6 rs12660307  C  T     0     3   121 Non-Risk
###### print the beginning of geno_risks to check if it worked
#### 4.
    > aggregate(nA1A2 ~ risks, data = geno_risks, FUN = mean)
           risks    nA1A2
        1 Non-Risk 36.96878
        2     Risk 37.31296
###### found aggregate which will put the data given into a table the data being the connection between risks and nA1A2 in the data geno_risks and finding the mean



