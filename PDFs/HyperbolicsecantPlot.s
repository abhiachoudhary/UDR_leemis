x = seq(-2, 2, by = 0.01) 

f = (2*exp(pi*x))/(exp(2*pi*x)+1)

postscript(file = "HyperbolicsecantPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-2,2), xaxp = c(0, 1, 1),
     ylim = c(0, 1.0), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-2.0, -1.0, 0.0, 1.0, 2.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

text(2.3, -0.06105, "labx", cex = 0.7, adj = 0, font = 3)
text(-2.4, 1.165, "labf", cex = 0.7, adj = 0, font = 3)
