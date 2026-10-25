install.packages("BiocManager")
#install BiocManager

library(BiocManager)
#instruct BiocManager to start working
BiocManager::install("EBImage")
#install EBI Image

library(EBImage)
#instruct EBIImage to start working
setwd("C:/Users/woodZ/IBC_2026_Wood/Practials/W9")
#ensure that the script is running in the right folder
leafimage <- list.files(
  path = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/leafarea",
  pattern = "JPG",
  full.names = FALSE
)
#list the files in the path that follows but only the ones that follow the pattern of having the PNG and only list the file names not the paths
#?list.files

results <- data.frame(
  file = character(),
  area = numeric())

#made a empty dataframe that everything will feed into

source("C:/Users/woodZ/IBC_2026_Wood/Practials/W9/getArea.R")
#load getArea in so the script know this is what get Area is

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
#for a image in leafimage find the area using getArea and put it into the empty data frame named results and loop and repeat till done

#need to extract the timepoint and which plant it is so went back and changed original code

library(EBImage)
setwd("C:/Users/woodZ/IBC_2026_Wood/Practials/W9")

leafimage <- list.files(
  path = "C:/Users/woodZ/IBC_2026_Wood/Practials/W9/leafarea",
  pattern = "JPG",
  full.names = FALSE
)

timepoint <- sub("_.*", "", f)
#removes everything after the _, dont replace with anything, do it to f

plant <- sub(".*_", "", f)
#removes everything before the _, dont replace with anything, do it to f

results <- data.frame(
  file = character(),
  area = numeric(),
  timepoint = character(),
  plant = character())

#added the empty parts into the dataframe

source("C:/Users/woodZ/IBC_2026_Wood/Practials/W9/getArea.R")

for (f in leafimage) {
  
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
}

#struggling with Question 3

