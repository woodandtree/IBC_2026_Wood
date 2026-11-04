geo_dist <- read.csv("C:/Users/woodZ/IBC_2026_Wood/Practials/W10/Leuk_geoDist.csv", row.names=1)
temp_dist <- read.csv("C:/Users/woodZ/IBC_2026_Wood/Practials/W10/Leuk_tempDist.csv", row.names=1)

dim(geo_dist)
dim(temp_dist)

as.dist(round(geo_dist[1:5, 1:5]))
as.dist(round(temp_dist[1:5, 1:5]))

geo_dist <- as.dist(geo_dist)
temp_dist <- as.dist(temp_dist)

plot(geo_dist, temp_dist, xlab="Geographic Distance (miles)", ylab="Temporal Distance (days)"
     
cor.test(geo_dist, temp_dist, method="spearman")

v <- 1:3
v[c(2,1,3)]
v <- c("a", "b", "c")
v[c(2,1,3)]


nPer <- 10000

cor_coef <- c()

for(i in 1:nPer){
  
  order <- sample(1:length(temp_dist), size=length(temp_dist), rep=F)

  temp_shuf <- temp_dist[order]
  
  cor_coef[i] <- cor(geo_dist, temp_shuf, method="spearman")
}

summary(cor_coef)

plot(geo_dist, temp_shuf, xlab="Geographic Distance (miles)", ylab="Temporal Distance (days)"

hist(cor_coef)
sum(cor_coef >= 0.387)
sum(abs(cor_coef >= 0.387))#means pvalue is very very small

