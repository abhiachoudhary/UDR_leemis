x = seq(0.01, 3, by = 0.01) 
lambda = 0.3
f = sqrt(lambda/(2*pi*x^3))*exp(-(lambda/(2*x))*(x - 1)^2)

postscript(file = "StandardwaldPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)

lambda = 3
f = sqrt(lambda/(2*pi*x^3))*exp(-(lambda/(2*x))*(x - 1)^2) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = 0.4
text(0.3, 1.5, "lab1", cex = 0.7, adj = 0, font = 10)

# lambda = 3
text(1.0, 0.9, "lab2", cex = 0.7, adj = 0, font = 10)

text(3.15, -0.1, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.4, 2.27, "labf", cex = 0.7, adj = 0, font = 10)
