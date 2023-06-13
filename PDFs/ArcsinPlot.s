x = seq(0, 1, by = 0.01)
f = 1/(pi*sqrt(x*(1-x)))

postscript(file = "ArcsinPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 1), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0),
     font.axis = 3, cex.axis = 0.95)

text(1.05, -0.111, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.1, 2.276, "labf", cex = 0.7, adj = 0, font = 3)
