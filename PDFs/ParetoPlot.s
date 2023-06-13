x = seq(1, 3, by = 0.01) 
lambda = 1
kappa = 1 

f = (kappa*lambda^kappa)/(x^(kappa+1))

postscript(file = "ParetoPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(1, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(1.0, 1.5, 2.0, 2.5, 3.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)

lambda = 1
kappa = 4
f = (kappa*lambda^kappa)/(x^(kappa+1))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# kappa = 1
text(2.2, 0.35, "lab1", cex = 0.7, adj = 0, font = 3)

# kappa = 4
text(1.25, 1.5, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 5
#text(7, 0.12, "lab3", cex = 0.7, adj = 0, font = 3)

text(3.08, -0.08, "labx", cex = 0.7, adj = 0, font = 3)
text(0.75, 2.2, "labf", cex = 0.7, adj = 0, font = 3)
