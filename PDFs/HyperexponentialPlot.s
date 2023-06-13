x = seq(0.01, 3.00, by = 0.01) 

a1 = 0.25
a2 = 0.5
a3 = 1
p1 = 0.5
p2 = 0.25
p3 = 0.25
f = (p1/a1)*exp(-x/a1) + (p2/a2)*exp(-x/a2) + (p3/a3)*exp(-x/a3) 

postscript(file = "HyperexponentialPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)

text(3.18, -0.1, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.4, 2.27, "labf", cex = 0.7, adj = 0, font = 10)
