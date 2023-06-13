x = seq(0, 3, by = 0.01) 
#   kappa > 1
delta = 1
gamma = 1
kappa = 2
f = (gamma+(delta*(kappa^x)))*exp(-gamma*x-((delta*((kappa^x)-1))/(log(kappa))))

postscript(file = "MakehamPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 1.6), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6),
     font.axis = 3, cex.axis = 0.95)

# delta = 1, kappa = 2, gamma = 1
text(1, 0.5, "lab1", cex = 0.7, adj = 0, font = 3)

text(3.2, -0.0888, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.4, 1.8208, "labf", cex = 0.7, adj = 0, font = 3)
