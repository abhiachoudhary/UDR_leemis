x = seq(0, 3, by = 0.01) 
lambda = 1
kappa = 2
f = ((lambda*kappa)*((lambda*x)^(kappa-1)))/((1+(lambda*x)^kappa)^2)

postscript(file = "LoglogisticPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1.0, 2.0, 3.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0),
     font.axis = 3, cex.axis = 0.95)

lambda = 5
kappa = 1
f = ((lambda*kappa)*((lambda*x)^(kappa-1)))/((1+(lambda*x)^kappa)^2)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

lambda = 1
kappa = 5
f = ((lambda*kappa)*((lambda*x)^(kappa-1)))/((1+(lambda*x)^kappa)^2) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = 1, kappa = 2
text(2.0, 0.3, "lab1", cex = 0.7, adj = 0, font = 3)

# lambda = 5, kappa = 1
text(.25, 1.6, "lab2", cex = 0.7, adj = 0, font = 3)

# lambda = 1, kappa = 5
text(1.35, 0.8, "lab3", cex = 0.7, adj = 0, font = 3)

text(3.2, -0.11, "labx", cex = 0.7, adj = 0, font = 3)
text(-.4, 2.276, "labf", cex = 0.7, adj = 0, font = 3)
