vec <- runif(1e7)
vec_new <- c()

system.time(
for(i in 1:length(vec)){
  vec_new[i] <- vec[i]/4
}
)

vec.new <- vec/4

system.time(vec/4)
