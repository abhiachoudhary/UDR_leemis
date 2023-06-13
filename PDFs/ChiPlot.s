x = seq(0, 5, by = 0.01) 
n = 1
f = (((x^(n-1))*exp(-(x^2)/2)))/((2^((n/2)-1))*gamma(n/2))

postscript(file = "ChiPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 6), xaxp = c(0, 1, 1),
     ylim = c(0, 1), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3, 4, 5),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

n = 2
f = (((x^(n-1))*exp(-(x^2)/2)))/((2^((n/2)-1))*gamma(n/2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

n = 8
f = (((x^(n-1))*exp(-(x^2)/2)))/((2^((n/2)-1))*gamma(n/2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# n = 1
text(.4, 0.8, "lab1", cex = 0.7, adj = 0, font = 3)

# n = 2
text(1.3, 0.63, "lab2", cex = 0.7, adj = 0, font = 3)

# n = 8
text(3, 0.58, "lab3", cex = 0.7, adj = 0, font = 3)

text(5.25, -.0555, "labx", cex = 0.7, adj = 0, font = 3)
text(-.5, 1.138, "labf", cex = 0.7, adj = 0, font = 3)
