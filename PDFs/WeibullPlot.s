x = seq(0, 2, by = 0.01) 
lambda = 1
kappa  = 2 
f = dweibull(x, shape = kappa, scale = lambda) 

postscript(file = "WeibullPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 2), xaxp = c(0, 1, 1),
     ylim = c(0, 1.4), yaxp = c(0, 1, 1),
     axes = F,
     font.axis = 3)

axis(side = 1, at = c(0.0, 0.5, 1.0, 1.5, 2.0), font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4), font.axis = 3, cex.axis = 0.95)

lambda = 1
kappa  = 3 
f = dweibull(x, shape = kappa, scale = lambda) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

x = seq(0.01, 2, by = 0.01) 
lambda = 1
kappa  = 1 
f = dweibull(x, shape = kappa, scale = lambda) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

x = seq(0.06, 2, by = 0.01) 
lambda = 1
kappa  = 1 / 2
f = dweibull(x, shape = kappa, scale = lambda) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

#  text(0.3, 1.3, "k = 0.5", cex = 0.95, font = 13)
#  text(1.04, 0.480, "k = 1", cex = 0.95, font = 13)
#  text(0.83, 0.69, "k = 2", cex = 0.95, font = 13)
#  text(1.28, 1.0, "k = 3", cex = 0.95, font = 13)

#  text(2.125, -0.05, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-0.175, 1.59, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-0.156, 1.59, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-0.142, 1.59, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-0.122, 1.59, "   )",  cex = 0.95, adj = 0, font = 3)

text(0.12, 1.3, "lab5", cex = 0.7, adj = 0, font = 10)
text(0.90, 0.480, "lab1", cex = 0.7, adj = 0, font = 10)
text(0.77, 0.91, "lab2", cex = 0.7, adj = 0, font = 10)
text(1.16, 1.0, "lab3", cex = 0.7, adj = 0, font = 10)

text(2.13, -0.06, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.20, 1.59, "labf", cex = 0.7, adj = 0, font = 10)
