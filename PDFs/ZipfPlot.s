x = 1:10
f = 1/(x*2.9290)

postscript(file = "ZipfPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
	mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab = "", ylab="",
	xlim = c(1,10), xaxp = c(0, 1, 1),
	ylim = c(0, 0.4), yaxp = c(0, 1, 1),
	axes = F, font.axis = 3)

axis(side = 1, at = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4), font.axis = 3, cex.axis = 0.95, line = 0.2)

text(10.65, -0.01, "labx", cex = 0.7, adj = 0, font = 3)
text(0.06, 0.442, "labf", cex = 0.7, adj = 0, font = 3)