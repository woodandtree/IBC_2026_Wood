#for

v <- 1:12

for(i in v){
  print(i^3)
}

for(i in 1:12){
  print(i^3)
}

v <- c(2,4,6,8,10,12)

v_5 <- c()

for(i in 1:length(v)){
  print(i^3)
}

length(v)


for(i in 1:length(v)){
  v_5 <- v[i]^5
}
v[1]
v[2]

v_5
data.frame(v, v_5)

#while

x <- 137

res <- c()

found <- 0

while(found <4){
  if(x %% 137 == 0){
    res <- c(res,x)
    found <- found + 1
  }
  x <- x + 1
}

found
res
548/137

#repeat

times <- 0
repeat{
  print("Hello!")
  times <- times + 1
  if(times >= 5){
    break
  }
}


####### stil dont get repeat loops
m <- 137

f <- 0
repeat{
  if (m %% 137 == 0)
  f <- f + 1{
    break
  }
  x <- x + 1
}
   


