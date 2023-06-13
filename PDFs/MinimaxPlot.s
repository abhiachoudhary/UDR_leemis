x = seq(0, 1, by = 0.01) 
beta = 2
gamma = 2
f = beta * gamma * x^(beta-1) * (  (1-(x^beta))^(gamma-1)  )

postscript(file = "MinimaxPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 1), xaxp = c(0, 1, 1),
     ylim = c(0, 3), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0),
     font.axis = 3, cex.axis = 0.95)

beta = 1
gamma = 3
f = beta*gamma*(x^(beta-1))*((1-(x^beta))^(gamma-1))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

beta = .5
gamma = .5
f = beta*gamma*(x^(beta-1))*((1-(x^beta))^(gamma-1))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 2, beta = 2
text(0.1, 0.2, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 3
text(0.2, 2.2, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = .5, beta = .5
text(0.48, 3, "lab3", cex = 0.7, adj = 0, font = 3)

text(1.05, -0.1665, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.1, 3.414, "labf", cex = 0.7, adj = 0, font = 3)
