x = seq(0, 6, by = 0.01) 
alpha = 0.5
f = ((2*x)/alpha)*exp((-x^2)/alpha)

postscript(file = "RayleighPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0,6), xaxp = c(0, 1, 1),
     ylim = c(0, 1.2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(0, 1, 2, 3, 4, 5, 6),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2),
     font.axis = 3, cex.axis = 0.95)

alpha = 2
f = ((2*x)/alpha)*exp((-x^2)/alpha)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 8
f = ((2*x)/alpha)*exp((-x^2)/alpha)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 0.5
text(1.0, 1.0, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 2
text(1.8, 0.5, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 8
text(4, 0.2, "lab3", cex = 0.7, adj = 0, font = 3)

text(6.2, -0.06, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.5, 1.34, "labf", cex = 0.7, adj = 0, font = 3)
