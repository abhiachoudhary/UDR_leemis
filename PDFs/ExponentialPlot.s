x = seq(0.01, 4.00, by = 0.01) 
alpha = 1
f = dexp(x, rate = 1/alpha) 

postscript(file = "ExponentialPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 4), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3, 4),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)

alpha = 2 
f = dexp(x, rate = 1/alpha) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 0.5
f = dexp(x, rate = 1/alpha) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 1
text(1.1, 0.42, "lab1", cex = 0.7, adj = 0, font = 10)

# alpha = 2
text(0.1, 0.18, "lab2", cex = 0.7, adj = 0, font = 10)

# alpha = 3
text(0.3, 1.4, "lab3", cex = 0.7, adj = 0, font = 10)

text(4.20, -0.1, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.4, 2.27, "labf", cex = 0.7, adj = 0, font = 10)
