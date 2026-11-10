areas <- c(11506, 5500, 16988, 2968, 3745, 9390, 6795)
barplot(areas)

names(areas) <- c("Africa", "Antarctica", "Asia", "Austrailia", "Europe", 
                  "North America", "South America")
barplot(areas)

barplot(areas, names=c("Af", "Ant", "As", "Au", "Eu", "NA", "SA"))

barplot(areas, names=c("Af", "Ant", "As", "Au", "Eu", "NA", "SA"), 
        xlab="Land Mass", ylab="Area", ylim=c(0,16000),
        main = "Area of Continents",
        col = "pink")

barplot(areas, names=c("Af", "Ant", "As", "Au", "Eu", "NA", "SA"), 
        xlab="Land Mass", ylab="Area", 
        main = "Area of Continents",
        col = "pink", border=NA)

barplot(areas, horiz=TRUE,
        names=c("Af", "Ant", "As", "Au", "Eu", "NA", "SA"), 
        xlab="Area", ylab="Land Mass", 
        main = "Area of Continents",
        col = "pink", border=NA)

data(iris)
barplot(iris$Petal.Length, col=iris$Species, 
        border=NA, space=F, ylab="Petal Length(mm)",
        xlab="Individuals")

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)")

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="blue", pch=15)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="blue", pch="Z")

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="black", pch=21, bg="pink")

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="black", pch=21, bg="pink", cex=1.5)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="black", pch=21, bg="pink", cex=0.5)

x <- seq(0, 36, 0.5)
plot(x, cos(x), pch=16)

plot(x, cos(x), pch=16, type="b")

plot(x, cos(x), pch=16, type="l")

plot(x, cos(x), pch=16, type="n")

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="black", pch=21, bg=iris$Species, cex=1.5)

levels(iris$Species)
colors <- rep(NA, nrow(iris))
symbols <- rep(NA, nrow(iris))

colors[iris$Species == "setosa"] <- "gold"
colors[iris$Species == "versicolor"] <- "darkgreen"
colors[iris$Species == "virginica"] <- "orchid"

head(cbind(iris, colors))

symbols[iris$Species == "setosa"] <- 21
symbols[iris$Species == "versicolor"] <- 22
symbols[iris$Species == "virginica"] <- 23

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", col="black", pch=symbols, bg=colors, cex=1.5)

legend(x=6.95, y=4.45,
       c("I. setosa", "I. versicolor", "I. virginica"), 
       pch=c(21,22,23), cex=0.5,
       col="black", pt.bg=c("gold", "darkgreen", "orchid"))

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", pch=21, col="black", bg=rgb(1,0,0), cex=1.5)

col2rgb("orchid")/255 #can put colors in hex form to

colors[iris$Species == "setosa"] <- rgb(1,0,0.854,0.5)
colors[iris$Species == "versicolor"] <- rgb(0.84,0.39,0.44,0.5)
colors[iris$Species == "virginica"] <- rgb(0,0,0.84,0.5)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", pch=symbols, col="black", bg=colors, cex=1.5)

legend(x=6.95, y=4.45,
       c("I. setosa", "I. versicolor", "I. virginica"), 
       pch=c(21,22,23), cex=0.5,
       col="black", pt.bg=c(rgb(1,0,0.854,0.5), 
                            rgb(0.84,0.39,0.44,0.5), rgb(0,0,0.84,0.5)))

x<- seq(0, 16, 0.5)
plot(x, cos(x), pch=16, cex.lab=2, cex.axis=1.2,
     main="Cosine of x", cex.main=3, xlab=expression(theta), 
     ylab=expression(cos(theta)), 
     text(9, 0.75, "y=cos(x)", cex=1.5))

x<- seq(0, 16, 0.5)
plot(x, cos(x), pch=16, cex.lab=1.5, cex.axis=1.2,
     main="Cosine of x", cex.main=3, 
     xlab=expression(paste(theta, "in units of", pi, sep=" ")), 
     ylab=expression(cos(theta)), 
     text(9, 0.75, "y=cos(x)", cex=1.5))
text(3, 0.75, expression(paste(cos^2, (theta) == frac(1, 2))), cex=1.5)

plot(rnorm(1e4), rnorm(1e4), pch=16, col=rgb(0,0,0,0.2))

x<- seq(0, 16, 0.5)
plot(x, cos(x), type="b", pch=16, cex.lab=1.5, cex.axis=1.2,
     main="Cosine of x", cex.main=3, 
     xlab=expression(theta), 
     ylab=expression(cos(theta)))
points(x, sin(x), pch=16, col="red", type="b")
abline(h=0, lty=2)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length(mm)",
     ylab="Sepal Width(mm)", pch=symbols, col="black", bg="grey", cex=1.5)
reg <- lm(iris$Sepal.Width~iris$Sepal.Length)
abline(coef(reg), col="red")

x<- seq(0, 16, 0.5)
plot(x/pi, cos(x), type="b", pch=16, cex.lab=1.5, cex.axis=1.2,
     main="Cosine of x", cex.main=3, 
     xlab=expression(theta), 
     ylab=expression(cos(theta)))
x2 <- seq(0, 16, 0.01)
lines(x2/pi, cos(x2))

x<- seq(0, 16, 0.5)
plot(x/pi, cos(x), type="b", pch=16, cex.lab=1.5, cex.axis=1.2,
     main="Cosine of x", cex.main=3, 
     xlab=expression(theta), 
     ylab=expression(cos(theta)), xlim=c(-1,6), ylim=c(0,1))
lines(x2/pi, cos(x2))

hist(iris$Petal.Width, xlab="Petal Width (mm)", 
     main="", col="black", border="white")

set <- iris$Petal.Width[iris$Species == "setosa"]
vers <- iris$Petal.Width[iris$Species == "versicolor"]
vir <- iris$Petal.Width[iris$Species == "virginica"]

hist(set, xlab="Petal Width (mm)", main="",
     col=rgb(1, 0, 0.854, 0.5), xlim=c(0,2.5))
hist(vers, xlab="Petal Width (mm)", main="",
     col=rgb(0.84, 0.39, 0.44, 0.5), xlim=c(0,2.5), add=T)
hist(vir, xlab="Petal Width (mm)", main="",
     col=rgb(0, 0, 0.84, 0.5), xlim=c(0,2.5), add=T)

hist(set, xlab="Petal Width (mm)", main="",
     col=rgb(1, 0, 0.854, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1))
hist(vers, xlab="Petal Width (mm)", main="",
     col=rgb(0.84, 0.39, 0.44, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1), add=T)
hist(vir, xlab="Petal Width (mm)", main="",
     col=rgb(0, 0, 0.84, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1), add=T)

boxplot(set, vers, vir, names=c("I. set", "I. vers", "I. vir"),
        col=c("gold", "darkgreen", "orchid"),
        xlab="Species", ylab="Petal Width(mm)")

boxplot(iris$Petal.Width~iris$Species,
        col=c("gold", "darkgreen", "orchid"),
        xlab="Species", ylab="Petal Width(mm)")

par(mfrow=c(2,2))
hist(set, xlab="Petal Width (mm)", main="",
     col=rgb(1, 0, 0.854, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1))
mtext("A.", side=3, adj=-0.3, line=0.3, cex=1.5)
hist(vers, xlab="Petal Width (mm)", main="",
     col=rgb(0.84, 0.39, 0.44, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1))
mtext("B.", side=3, adj=-0.3, line=0.3, cex=1.5)
hist(vir, xlab="Petal Width (mm)", main="",
     col=rgb(0, 0, 0.84, 0.5), xlim=c(0,2.5),
     breaks=seq(0, 2.5, 0.1))
mtext("C.", side=3, adj=-0.3, line=0.3, cex=1.5)
plot(iris$Petal.Width~iris$Species,
        col=c("gold", "darkgreen", "orchid"),
        xlab="Species", ylab="Petal Width(mm)")
mtext("D.", side=3, adj=-0.3, line=0.3, cex=1.5)


