x = seq(-4, 2, by = 0.01)
alpha = 1
beta = 1
f = (beta/alpha)*exp((x*beta)-(exp(x*beta)/alpha))

postscript(file = "ExtremevaluePlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 2), xaxp = c(0, 1, 1),
     ylim = c(0, 1.2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(-4.0, -3.0, -2.0, -1.0, 0.0, 1.0, 2.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2),
     font.axis = 3, cex.axis = 0.95)

alpha = 1
beta = 3
f = (beta/alpha)*exp((x*beta)-(exp(x*beta)/alpha))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 5
beta = 2
f = (beta/alpha)*exp((x*beta)-(exp(x*beta)/alpha))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 1, beta = 1
text(-4, 0.20, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 3
text(0.4, 1.0, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 5, beta = 2
text(1.4, 0.6, "lab3", cex = 0.7, adj = 0, font = 3)

text(2.40, -0.0666, "labx", cex = 0.7, adj = 0, font = 3)
text(-4.6, 1.365, "labf", cex = 0.7, adj = 0, font = 3)
