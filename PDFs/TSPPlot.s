x1 = seq(0, 3.00, by = 0.01) 
x2 = seq(3.01, 8, by = 0.01)
	
a = 0
b = 8
m = 3
n = 4
f1 = (n/(b-a))*((x1-a)/(m-a))^(n-1)
f2 = (n/(b-a))*((b-x2)/(b-m))^(n-1)

postscript(file = "TSPPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x1, f1, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 8), xaxp = c(0, 1, 1),
     ylim = c(0, 0.5), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3, 4, 5, 6, 7, 8),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5),
     font.axis = 3, cex.axis = 0.95)
 
lines(x2, f2, lty = c(1), type = "l", font = 3, cex = 0.5)

alpha = 0.5
f = dexp(x, rate = 1/alpha) 
#lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

text(8.4, -0.03, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.75, 0.55, "labf", cex = 0.7, adj = 0, font = 10)
