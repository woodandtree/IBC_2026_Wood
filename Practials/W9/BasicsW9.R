# Comment
# more comment

#makes it more readable
mat <- matrix(c(1,2,3,4,
                5,6,7,8,
                9,0,1,2), nr=3, nc=4)
matr <- t(mat)

# do analyses


for(x in c(10,20,30)){
  print(x)
  if (x>10){print("Above tne")
    if (x>20){print("and above twenty")
    } else {print("but not above twenty")
    }
  } else{print("equal or below")
}

x <- 7


z <- readline(prompt="Enter a number: ")
z <- as.numeric(z)

if(z %% 2 ==0){
  print(paste(z, "is even"))
} else{
  print(paste(z, "is odd"))
}
