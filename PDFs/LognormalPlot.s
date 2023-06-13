x = seq(0, 10, by = 0.01) 
alpha = 1
beta = 1
f = (exp((-(log(x/alpha)/beta)^2)/2))/(sqrt(2*pi)*beta*x)

postscript(file = "LognormalPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 10), xaxp = c(0, 1, 1),
     ylim = c(0, 1), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 2.0, 4.0, 6.0, 8.0, 10.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

alpha = 1
beta = 2
f = (exp((-(log(x/alpha)/beta)^2)/2))/(sqrt(2*pi)*beta*x)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 5
beta = .5
f = (exp((-(log(x/alpha)/beta)^2)/2))/(sqrt(2*pi)*beta*x)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 1, beta = 1
text(1.5, 0.4, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 2
text(6, 0.18, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 5, beta = .5
text(0.6, 0.85, "lab3", cex = 0.7, adj = 0, font = 3)

text(10.5, -0.0555, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.8, 1.138, "labf", cex = 0.7, adj = 0, font = 3)
