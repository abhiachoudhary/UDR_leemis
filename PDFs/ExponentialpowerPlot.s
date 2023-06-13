x = seq(0, 2, by = 0.01)
lambda = 1
kappa = 1
f = (exp(1-exp(lambda*x^kappa)))*(exp(lambda*x^kappa))*lambda*kappa*x^(kappa-1)

postscript(file = "ExponentialpowerPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 2), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0),
     font.axis = 3, cex.axis = 0.95)

lambda = 2
kappa = 1
f = (exp(1-exp(lambda*x^kappa)))*(exp(lambda*x^kappa))*lambda*kappa*x^(kappa-1)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

lambda = 1
kappa = 2
f = (exp(1-exp(lambda*x^kappa)))*(exp(lambda*x^kappa))*lambda*kappa*x^(kappa-1)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = 1, kappa = 1
text(1.6, 0.3, "lab1", cex = 0.7, adj = 0, font = 3)

# lambda = 2, kappa = 1
text(0.4, 1.7, "lab2", cex = 0.7, adj = 0, font = 3)

# lambda = 1, kappa = 2
text(1.1, 1.1, "lab3", cex = 0.7, adj = 0, font = 3)

text(2.1, -0.1, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.15, 2.276, "labf", cex = 0.7, adj = 0, font = 3)
