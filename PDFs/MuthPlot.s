x = seq(0, 3, by = 0.01) 
k = 0.2
f = (exp(k*x) - k)*exp(-(exp(k*x)/k) + k*x + (1/k))

postscript(file = "MuthPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 1), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

k = 0.5
f = (exp(k*x) - k)*exp(-(exp(k*x)/k) + k*x + (1/k))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

k = 1.0
f = (exp(k*x) - k)*exp(-(exp(k*x)/k) + k*x + (1/k))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# k = 0.2
text(0, 0.85, "lab1", cex = 0.7, adj = 0, font = 3)

# k = 0.5
text(0.63, 0.62, "lab2", cex = 0.7, adj = 0, font = 3)

# k = 1.0
text(1.3, 0.78, "lab3", cex = 0.7, adj = 0, font = 3)

text(3.15, -.05, "labx", cex = 0.7, adj = 0, font = 3)
text(-.3, 1.138, "labf", cex = 0.7, adj = 0, font = 3)
