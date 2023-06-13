x = seq(0, 14, by = 0.01) 
lambda = .05
kappa = 3
f = ((lambda^kappa)*kappa*exp(kappa*x)) /((1+(lambda*exp(x))^kappa)^2)

postscript(file = "LogisticPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 14), xaxp = c(0, 1, 1),
     ylim = c(0, 0.8), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0,
     11.0, 12.0, 13.0, 14.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8),
     font.axis = 3, cex.axis = 0.95)

lambda = .001
kappa = .75
f = ((lambda^kappa)*kappa*exp(kappa*x)) /((1+(lambda*exp(x))^kappa)^2)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

lambda = .005
kappa = 1.5
f = ((lambda^kappa)*kappa*exp(kappa*x)) /((1+(lambda*exp(x))^kappa)^2) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = .05, kappa = 3
text(3.6, 0.7, "lab1", cex = 0.7, adj = 0, font = 10)

# lambda = .001, kappa = .75
text(9.1, 0.15, "lab2", cex = 0.7, adj = 0, font = 10)

# lambda = .005, kappa = 1.5
text(6.35, 0.3, "lab3", cex = 0.7, adj = 0, font = 10)

text(14.7, -0.04, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.4, 0.91, "labf", cex = 0.7, adj = 0, font = 10)
