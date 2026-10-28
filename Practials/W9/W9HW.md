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

## 1. 

        install.packages("BiocManager")
###### install BiocManager

        library(BiocManager)
###### instruct BiocManager to start working
        BiocManager::install("EBImage")
###### install EBI Image

## 2.

        library(EBImage)
###### instruct EBIImage to start working
        setwd("C:/Users/woodZ/IBC_2026_Wood/Practials/W9")
###### ensure that the script is running in the right folder
        leafimage <- list.files(
          path = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/leafarea",
          pattern = "JPG",
          full.names = FALSE
        )
###### list the files in the path that follows but only the ones that follow the pattern of having the PNG and only list the file names not the paths
###### ?list.files

        results <- data.frame(
          file = character(),
          area = numeric())

###### made a empty dataframe that everything will feed into

        source("C:/Users/woodZ/IBC_2026_Wood/Practials/W9/getArea.R")
###### load getArea in so the script know this is what get Area is

        for (f in leafimage) {
  
          area <- getArea(f)
  
          results <- rbind(
            results,
            data.frame(
              file = f,
              area = area
            )
          )
        }
###### for a image in leafimage find the area using getArea and put it into the empty data frame named results and loop and repeat till done

## 3. 

###### need to extract the timepoint and which plant it is so went back and changed original code

        library(EBImage)
        setwd("C:/Users/woodZ/IBC_2026_Wood/Practials/W9")

        leafimage <- list.files(
          path = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/leafarea",
          pattern = "JPG",
          full.names = FALSE
        )

        results <- data.frame(
          file = character(),
          area = numeric(),
          timepoint = character(),
          plant = character())

###### added the empty parts into the dataframe

        source("C:/Users/woodZ/IBC_2026_Wood/Practials/W9/getArea.R")

        for (f in leafimage) {

            name <- basename(f) 
###### the name is the basename of f so the separate files
            parts <- split(name, "_")[[1]] 
###### split the names by their _ separator and name it parts so that one part can be 1 and the other 2
###### ?split

            timepoint <- parts[1]
###### is the first part of the basename

            plant <- parts[2]
###### is the second part of the basename
  
            area <- getArea(f)
  
            results <- rbind(
                results,
                data.frame(
                  file = f,
                  area = area,
                  timepoint = timepoint,
                  plant = plant
                )
              )

###### struggling with Question 3
###### the results are only showing time point as the whole thing instead of that part split

## 4. 

###### Although I am unable to figure out Q3 this is how to write the file into a csv
        write.csv(results, "leafarea.csv")
###### write.csv will write the file and then use the data from results and name it the results.csv
###### not sure why but it is not making a file. 
