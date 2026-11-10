#grid <- expand.grid(1:5, 6:1)
#plot(grid, pch = 0:30, cex = 2.5,
     #yaxt = "n", xaxt = "n",
     #ann = FALSE, xlim = c(0.5, 5.25),
     #ylim = c(0.5, 6.5))

#grid2 <- expand.grid(seq(0.6, 4.6, 1), 6:1)
#text(grid2$Var1[1:26], grid2$Var2[1:26], 0:25)

#maybe use cbind or rbind or like in class maybe rep?
#?expand.grid

#cbind didn't work the shapes were just all over the plot
#rbind didn't work just the square showed up

?rep
#rep = repeat

x <- rep(1:5, times=6)
#repeat 1 through 5, 6 times
#the x coordinates of the plot
y <- rep(6:1, each=5)
#repeat 1 through 5, each number 5 times
#y coordinates of the plot
#both are named because in order to put it in a plot it 
#needs to know what we're referring to

plot(x, y, 
     pch = 0:30, cex = 2.5,
     yaxt = "n", xaxt = "n",
     ann = FALSE, xlim = c(0.5, 5.25),
     ylim = c(0.5, 6.5))
     
x2 <- rep(seq(0.6, 4.6, 1), times = 6)
#repeat the sequence of 0.6, 4.6, 1, 6 times and name it x2
#x coordinates for the labels, they are shifted so they don't land right 
#on top of the symbols
#the y coordinates stay the same
text(x2[1:26], y[1:26], 0:25)
#x2 is the first one because it is the horizontal position
#y is the vertical position


