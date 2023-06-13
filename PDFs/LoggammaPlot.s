x = seq(-4, 4, by = 0.01) 
alpha = 1
beta = 1
f = ((gamma(beta))/(alpha^beta))*(exp(beta*x))*(exp(-exp(x)/alpha))

postscript(file = "LoggammaPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 4), xaxp = c(0, 1, 1),
     ylim = c(0, 0.6), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-4.0, -2.0, 0.0, 2.0, 4.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2),
     font.axis = 3, cex.axis = 0.95)

alpha = 5
beta = 1
f = ((gamma(beta))/(alpha^beta))*(exp(beta*x))*(exp(-exp(x)/alpha))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 1
beta = 2
f = ((gamma(beta))/(alpha^beta))*(exp(beta*x))*(exp(-exp(x)/alpha))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 1, beta = 1
text(-4, 0.27, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 5, beta = 1
text(2.25, 0.35, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 2
text(-2.8, 0.52, "lab3", cex = 0.7, adj = 0, font = 3)

text(4.4, -0.0333, "labx", cex = 0.7, adj = 0, font = 3)
text(-4.8, 0.6828, "labf", cex = 0.7, adj = 0, font = 3)
