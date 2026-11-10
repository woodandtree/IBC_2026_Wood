tellfortune <- function(day="Wednesday"){
  if(day == "Monday"){
    fort <- "Nope..."
  } else {
      fort <- sample(c("Today will be great", "Not worth it, stay in bed"), 1, p=c(0.25,0.75))
    }
  return(fort)
}

a <- tellfortune("Wednesday")

paste("My fortune was", a)

#source to get files