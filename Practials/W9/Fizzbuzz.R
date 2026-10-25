#run these two seperately and then run the rest of the script
z <- readline(prompt = "Enter a number: ")
z <- as.numeric(z)

if(z %% 3 == 0 & z %% 5 == 0){
  print("fizzbuzz")
} else if(z %% 3 == 0){
  print("fizz")
} else if(z %% 5 == 0){
  print("buzz")
} else{
  print(z)
}
