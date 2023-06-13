x = seq(0, 2, by = 0.01) 
alpha = 5
beta = 1
f = (alpha*beta*((exp(alpha*x)-1)^(beta-1))*exp(alpha*x))/((1+(exp(alpha*x)-1)^beta)^2)

postscript(file = "LogisticexponentialPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 2), xaxp = c(0, 1, 1),
     ylim = c(0, 1.4), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 1.0, 2.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4),
     font.axis = 3, cex.axis = 0.95)

alpha = 1
beta = 2
f = (alpha*beta*((exp(alpha*x)-1)^(beta-1))*exp(alpha*x))/((1+(exp(alpha*x)-1)^beta)^2)
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# alpha = 5, beta = 1
text(0.4, 1.4, "lab1", cex = 0.7, adj = 0, font = 3)

# alpha = 1, beta = 2
text(1.3, 0.4, "lab2", cex = 0.7, adj = 0, font = 3)

text(2.15, -0.0777, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.2, 1.593, "labf", cex = 0.7, adj = 0, font = 3)

