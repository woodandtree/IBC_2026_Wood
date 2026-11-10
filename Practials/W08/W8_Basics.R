print("hello")
sqrt(2)
?print
??"^glm"  
sqrt(5)
(5+5) *5
5%/%3
5**3
5!=5
a = 4
a
a<- 4
4+5-6.7 -> c
c
c*4
c/c
x <- 5.2
class(x)
y <- as.integer(x)
class(y)
d <- 2+4i
class(d)
is.integer(x)
x
abs(-4)
ceiling(4.1)
floor(4.1)
log(3)
log10(3)
2e4
exp(2)
round(7.809174,digit =2)
pi
cos(pi)
tanh(pi)
seq <- "AAA TTT GGG"
class(seq)
strsplit(seq, split=" ")
substr(seq, start = 5, stop = 8)
gsub("T", "U", seq)
nchar(seq)
tolower(seq)
toupper(seq)
seq2 <- gsub(" ", "", seq)
paste("the sequence is", seq2, sep=" ")
nchar(seq2)
paste("The sequence has", nchar(seq2), "base pairs", sep=" ")
closed <- TRUE
class(closed)
open <- FALSE
open
closed
open + closed
2 == 3 
2 != 3
5 > 5
5>=5
5<=5
a <- 5==2
a
5<=7
is.numeric(4) & 4%%3==0
v <- c(2, 3, 4, 5)
class(v)
x <- c("one", "two", "three", 1, 2, TRUE)
class(x)
4:43
seq(0, 100, 2)
v
v[3]
v[3:5]v <- seq(0,20,2)
v[3] <- 55
v
v[c(-4, -5)]

rep(c("hello", "how", "are", "you"), c(1,2,1,4)
x
v+3    
max(v)
min(v)
v+3
quantile(v, 0.9)
v
sort(v)
summary(v)
vis <- c("bear", "racoon", "racoon", "racoon", "cat", "cat")
class(vis)
vis <- as.factor(vis)
class(vis)
summary(vis)
plot(vis)
z <- seq(2, 100, 2)
z
sum(z) == (51*50)
z^2 
z >= 90
which(z >= 90)
51*50
mat <- matrix(c(1,2,3,4,5,6), nc=2, nr=3)
mat
dimnames(mat) <- list(c("r1", "r2", "r3"), c("c1", "c2"))
mat
mat <- matrix(c(1,2,3,4,5,6), nc=2, nr=3, byrow=T)
mat
matrix(c("one", "two", "three", "five"), nc=2, nr=2)
matrix(c(1,2), nc=2, nr=4, byrow=T)
mat
nrow(mat)
ncol(mat)
dim(mat)
mat
mat[3, 2]
mat[1,]
mat[,2]
mat[,c(1,2)]
M <- matrix(2:5, nc=2, nr=2)
M
M/2
solve(M)
round(M %*% solve(M))
M
diag(M)
t(mat)

ID <- c("P1", "P2", "P3", "P4")
Treatment <- as.factor(c("Fert", "Cont", "Fert", "Cont"))
Weight <- c(22,24,34,32)
df <- data.frame(ID, Treatment, Weight)
df
str(df)
head(df, n=2)
tail(df, n=2)
df[1,3]
df[,3]
df$Treatment[1:3]
df[df$Treatment=="Cont",]
df2 <- data.frame(height = c(4,3,5,3), LArea=c(4,8,2,5))
df2
df_all <- cbind(df, df2)
df_all
df_all$Experimenter <- c("John", "John", "Sarah", "Sarah")
df_all
data(trees)
trees
nrow(trees)
ncol(trees)
summary(trees)
height75 <- which(trees$Height>75)
height75 <- trees[trees$Height>75,]
length(height75)
mean(height75$Girth)
v
M
my_list <- list(vec=v, mat=M, dataframe=df)
str(my_list)
my_list[[2]][,2]
my_list$mat

setwd("~/W8")
geno <- read.table("H938_Euro_chr6.geno", sep=" ", header=T)
str(geno)
head(geno)

geno$A1 <- as.factor(geno$A1)

geno_top <- head(geno, n=5)
write.table(geno_top, file="geno_small.tsv", sep="\t", row.names=F, col.names=F, append=T)
