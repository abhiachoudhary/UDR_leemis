x = 1:9
f = log10(1 + 1/x)

postscript(file = "BenfordPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
	mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab = "", ylab="",
	xlim = c(1,9), xaxp = c(0, 1, 1),
	ylim = c(0, 0.3), yaxp = c(0, 1, 1),
	axes = F, font.axis = 3)

axis(side = 1, at = c(1, 2, 3, 4, 5, 6, 7, 8, 9), font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3), font.axis = 3, cex.axis = 0.95, line = 0.2)

text(9.65, -0.01, "labx", cex = 0.7, adj = 0, font = 3)
text(0.06, 0.342, "labf", cex = 0.7, adj = 0, font = 3)