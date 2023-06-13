x = seq(0, 5, by = 0.01) 

#   mu > 0
lambda = 1
mu = 1
f = (sqrt(lambda/(2*pi*(x^3))))*exp((-lambda*((x-mu)^2))/(2*(mu^2)*x))

postscript(file = "InversegaussianPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 5), xaxp = c(0, 1, 1),
     ylim = c(0, 1.2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 1.0, 2.0, 3.0, 4.0, 5.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2),
     font.axis = 3, cex.axis = 0.95)

lambda = 3
mu = 1
f = (sqrt(lambda/(2*pi*(x^3))))*exp((-lambda*((x-mu)^2))/(2*(mu^2)*x))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

lambda = 3
mu = 3
f = (sqrt(lambda/(2*pi*(x^3))))*exp((-lambda*((x-mu)^2))/(2*(mu^2)*x))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# lambda = 1, mu = 1
text(0.5, 1.1, "lab1", cex = 0.7, adj = 0, font = 3)

# lambda = 3, mu = 1
text(1.35, 0.6, "lab2", cex = 0.7, adj = 0, font = 3)

# lambda = 3, mu = 3
text(2.5, 0.27, "lab3", cex = 0.7, adj = 0, font = 3)

text(5.4, -.0666, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.8, 1.3656, "labf", cex = 0.7, adj = 0, font = 3)
