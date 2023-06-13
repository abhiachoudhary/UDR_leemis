x = seq(-4, 8, by = 0.01) 
lambda = 1
phi = 1
f = lambda/(atan((lambda*phi)+.5)*(1+(lambda^2)*(x-phi)^2))

postscript(file = "ArctangentPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 8), xaxp = c(0, 1, 1),
     ylim = c(0, 1.6), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-4.0, -2.0,0.0, 2.0, 4.0, 6.0, 8.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6),
     font.axis = 3, cex.axis = 0.95)

lambda = 2
phi = 3
f = lambda/(atan((lambda*phi)+.5)*(1+(lambda^2)*(x-phi)^2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

lambda = 1
phi = 3
f = lambda/(atan((lambda*phi)+.5)*(1+(lambda^2)*(x-phi)^2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = 1, phi = 1
text(-4, 0.8, "lab1", cex = 0.7, adj = 0, font = 3)

# lambda = 2, phi = 3
text(-1.5, 1.3, "lab2", cex = 0.7, adj = 0, font = 3)

# lambda = 1, phi = 3
text(4.7, 0.3, "lab3", cex = 0.7, adj = 0, font = 3)

text(8.6, -0.0888, "labx", cex = 0.7, adj = 0, font = 3)
text(-5.2, 1.821, "labf", cex = 0.7, adj = 0, font = 3)
