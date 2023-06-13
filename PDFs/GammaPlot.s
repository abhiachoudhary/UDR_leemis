x = seq(0, 12, by = 0.01) 
alpha = 1
beta = 2
#f = dgamma(x, shape = alpha, scale = beta) 

f = ((x ^ (beta - 1)) * exp(-x / alpha)) / ((alpha ^ beta) * gamma(beta))

postscript(file = "GammaPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 12), xaxp = c(0, 1, 1),
     ylim = c(0, 0.5), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5),
     font.axis = 3, cex.axis = 0.95)

alpha = 2
beta = 1
f = ((x ^ (beta - 1))*exp(-x / alpha))/((alpha ^ beta) * gamma(beta))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 1
beta = 5
f = ((x^(beta-1))*exp(-x/alpha))/((alpha^beta)*gamma(beta))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 2, beta = 1
text(0.7, 0.42, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 2
text(2.3, 0.3, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 5
text(7, 0.12, "lab3", cex = 0.7, adj = 0, font = 3)

text(12.8, -0.0270, "labx", cex = 0.7, adj = 0, font = 3)
text(-1.2, 0.569, "labf", cex = 0.7, adj = 0, font = 3)
