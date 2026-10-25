# 4.1

    Saavedra <- list.files(path = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/Saavedra2013", full.names = TRUE)
###### Name the following Saavedra, the the files in the path listed and pull the file names inside with the path
###### ?list.files used to look up how to use list.files

    Stable <- data.frame(
      File = character(), Nrow = numeric(), Ncol = numeric(), p_1 = numeric(), p_0 = numeric())

###### need to make data frame first because otherwise each run through is rewriting itself leave all parts of it empty thought
###### filled everything except file is numeric inputs and file has a character input

    for (f in Saavedra){
      mat <- as.matrix(read.table(f, header = FALSE))
  
      row <- nrow(mat)
      col <- ncol(mat)
  
      total <- length(mat)
      one <- sum(mat == 1, na.rm = TRUE)
      zero <- sum(mat == 0, na.rm = FALSE)
  
      propo <- one/total
      propz <- zero/total
  
      Stable <- rbind(Stable, data.frame(File = basename(f), Nrow = row, Ncol = col, p_1 = propo, p_0 = propz))
    }

###### Stable 

    write.table(Stable, file = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/matrixstats.tsv",
                sep = "\t")

###### ?cbind and rbind to look up how to use cbind and rbind better

###### ?data.frame to look up how to use data.frame better

###### ?sum used to look up how to use sum better

###### ?matrix used to look up how to use matrix better

###### for file in saaverda do this
###### make a matrix named mat and read the table excluding the header
###### name row or col nrow counts the number of rows in mat, ncol counts the number of columns in mats

###### length measures the amount of elements so length of mat is the total amount of entries
###### Find the sum of all the matrix parts that are equal to one and missing values will be removed
###### define the proportions using the one, zero, and total found in the pervious 3 lines

###### use rbind to tell the system to bind row to the Stable with the all the information that is gathered together

###### gives me the right output except it's in alphabetical order, tried to do research to figure out how to fix it but was getting lost

###### write a table in an outfile of all this information input Stable and name it matrixstats.tsv but make sure it goes in the correct folder, seperate the table with tabs

# 4.2

