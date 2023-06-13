x = seq(-1, 6, by = 0.01)
a = 1
alpha = .25
f = 1/(alpha*pi*(1+((x-a)/alpha)^2))

postscript(file = "CauchyPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-1, 6), xaxp = c(0, 1, 1),
     ylim = c(0, 1.4), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-1.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4),
     font.axis = 3, cex.axis = 0.95)

a = 2
alpha = .5
f = 1/(alpha*pi*(1+((x-a)/alpha)^2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

a = 3
alpha = 1
f = 1/(alpha*pi*(1+((x-a)/alpha)^2))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# a = 1, alpha = .25
text(1.3, 1.1, "lab1", cex = 0.7, adj = 0, font = 3)

# a = 2, alpha = .5
text(2.5, 0.5, "lab2", cex = 0.7, adj = 0, font = 3)

# a = 3, alpha = 1
text(4.1, 0.2, "lab3", cex = 0.7, adj = 0, font = 3)

text(6.4, -0.0777, "labx", cex = 0.7, adj = 0, font = 3)
text(-1.6, 1.593, "labf", cex = 0.7, adj = 0, font = 3)
