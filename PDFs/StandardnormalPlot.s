x = seq(-3, 3, by = 0.01) 

f = exp(-(x)^2/2)/sqrt(2*pi)

postscript(file = "StandardnormalPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-3,3), xaxp = c(0, 1, 1),
     ylim = c(0, 0.5), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-3, -2, -1, 0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5),
     font.axis = 3, cex.axis = 0.95)

text(3.3, -0.02105, "labx", cex = 0.7, adj = 0, font = 3)
text(-3.65, 0.56, "labf", cex = 0.7, adj = 0, font = 3)