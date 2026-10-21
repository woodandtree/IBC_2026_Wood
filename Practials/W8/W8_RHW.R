setwd("~/W8")
#puts us in the correct folder
geno <- read.table("H938_Euro_chr6.geno", sep=" ", header=T)
#names the data geno and reads the table, while also saying it is seperated by spaces and does have a heading
str(geno)
#shows whats inside the file
max(geno$nA1A1 + geno$nA1A2 + geno$nA2A2)
#max finds the max value and then using the pluses it adds the max of all the seperate things together
max(rowSums(geno[, c("nA1A1", "nA1A2", "nA2A2")]))

risks <-read.csv("C:/Users/woodZ/IBC_2026_Wood/Practials/W8/SNP_risks.csv", header=T)
# read the risks file and name it risks
risks36 <- risks[,3]
#extract the 3rd column of risks and name it risks36
geno_risks <- cbind(geno, risks = risks36) 
#bind geno with the risks36 part of risks and name it geno_risks
head(geno_risks)
#print the beginning of geno_risks to check if it worked

aggregate(nA1A2 ~ risks, data = geno_risks, FUN = mean)
#found aggregate which will put the data given into a table the data being the connection between risks and nA1A2 in the data geno_risks and finding the mean

setwd("~/W8")
smith <-read.table("C:/Users/woodZ/IBC_2026_Wood/Practials/W8/Smith2003_data.txt", header=T, fill=TRUE)
#read file as normal but it losses some of its column halfway through so fill=true tells it to read that cloumn part and na and keep going
length(smith$nasomaculatus)

smith[smith(-999)] = c(Na)
#this did not run right error is because of Na, not defined? 
#no function smith return to original c?

smith[c(-999)] <- NA

smith[smith == -999] <- NA
print(smith)

smith[smith[,7] == -999] <- NA
smith[smith[,8] == -999] <- NA



