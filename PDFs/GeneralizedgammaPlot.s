x = seq(0, 10, by = 0.01) 
alpha = 1
beta = 2
gamma = 1

f = (gamma*(x^(gamma*beta-1))*exp((-x/alpha)^gamma))/((alpha^(gamma*beta))*gamma(beta))

postscript(file = "GeneralizedgammaPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 10), xaxp = c(0, 1, 1),
     ylim = c(0, 1.2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 1)

axis(side = 1, at = c(0.0, 2.0, 4.0, 6.0, 8.0, 10.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2),
     font.axis = 3, cex.axis = 0.95)

alpha = 3
beta = 2
gamma = 1
f = (gamma*(x^(gamma*beta-1))*exp((-x/alpha)^gamma))/((alpha^(gamma*beta))*gamma(beta))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 1
beta = 1
gamma = 3
f = (gamma*(x^(gamma*beta-1))*exp((-x/alpha)^gamma))/((alpha^(gamma*beta))*gamma(beta))
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 1, beta = 2, gamma = 1
text(2.25, 0.3, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 3, beta = 2, gamma = 1
text(7, 0.12, "lab2", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 1, gamma = 3
text(1.6, 0.7, "lab3", cex = 0.7, adj = 0, font = 3)

text(10.6, -0.031, "labx", cex = 0.7, adj = 0, font = 3)
text(-1.0, 1.365, "labf", cex = 0.7, adj = 0, font = 3)
