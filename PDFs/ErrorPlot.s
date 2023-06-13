x = seq(-3, 3, by = 0.01) 
a = -1
b = 1
c = .25
f = (exp(-((abs(x-a)/b)^(2/c))/2))/(b*(2^((c/2)+1))*gamma(1+(c/2)))

postscript(file = "ErrorPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-3, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 1), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(-3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

a = -1
b = 0.5
c = 1
f = (exp(-((abs(x-a)/b)^(2/c))/2))/(b*(2^((c/2)+1))*gamma(1+(c/2)))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

a = 0
b = 1
c = 2
f = (exp(-((abs(x-a)/b)^(2/c))/2))/(b*(2^((c/2)+1))*gamma(1+(c/2)))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# a = -1, b = 1, c = .25
text(0.1, 0.42, "lab1", cex = 0.7, adj = 0, font = 3)

# a = -1, b = 0.5, c = 1
text(-0.5, 0.7, "lab2", cex = 0.7, adj = 0, font = 3)

# a = 0, b = 1, c = 2
text(0.8, 0.22, "lab3", cex = 0.7, adj = 0, font = 3)

text(3.30, -0.0555, "labx", cex = 0.7, adj = 0, font = 3)
text(-3.6, 1.138, "labf", cex = 0.7, adj = 0, font = 3)
