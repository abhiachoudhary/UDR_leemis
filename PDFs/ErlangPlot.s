x = seq(0, 8, by = 0.01) 
n = 1
alpha = 1
f = ((x^(n-1))*exp(-x/alpha))/((alpha^n)*factorial(n-1))

postscript(file = "ErlangPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 8), xaxp = c(0, 1, 1),
     ylim = c(0, 0.6), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0), font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6), font.axis = 3, cex.axis = 0.95)

n = 3
alpha = 1
f = ((x^(n-1))*exp(-x/alpha))/((alpha^n)*factorial(n-1))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

n = 1
alpha = 4
f = ((x^(n-1))*exp(-x/alpha))/((alpha^n)*factorial(n-1))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# n = 1, alpha = 1
text(1.0, 0.49, "lab1", cex = 0.7, adj = 0, font = 3)

# n = 3, alpha = 1
text(3.5, 0.23, "lab2", cex = 0.7, adj = 0, font = 3)

# n = 1, alpha = 4
text(7.5, 0.07, "lab3", cex = 0.7, adj = 0, font = 3)

text(8.4, -.023, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.9, 0.68, "labf", cex = 0.7, adj = 0, font = 3)
