x = seq(0, 1, by = 0.01) 
alpha = 1
beta = 0.5
#f = dgamma(x, shape = alpha, scale = beta) 

f = (beta*x^(beta-1))/(alpha^beta)

postscript(file = "StandardpowerPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 1), xaxp = c(0, 1, 1),
     ylim = c(0, 3), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(0.0, 0.5, 1.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)

alpha = 1
beta = 3
f = (beta*x^(beta-1))/(alpha^beta)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# beta = 0.5
text(0.12, 2.0, "lab1", cex = 0.7, adj = 0, font = 3)

# beta = 3
text(0.6, 2.0, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 5
#text(7, 0.12, "lab3", cex = 0.7, adj = 0, font = 3)

text(1.05, -0.08, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.14, 3.35, "labf", cex = 0.7, adj = 0, font = 3)
