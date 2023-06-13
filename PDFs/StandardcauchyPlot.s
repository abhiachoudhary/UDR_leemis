x = seq(-4, 4, by = 0.01) 

f = 1/(3.1415*(1 + x*x))

postscript(file = "StandardcauchyPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(-4,4), xaxp = c(0, 1, 1),
     ylim = c(0, 0.4), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(-4, -2, 0, 2, 4),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0.0, 0.1, 0.2, 0.3, 0.4),
     font.axis = 3, cex.axis = 0.95)

#f = exp((-(x-3)^2)/8)/(2*sqrt(2*pi))
#lines(x, f, lty = c(1), type ="l", font = 3, cex = 0.5)

#text(2.5, 0.43, "lab1", cex = 0.7, adj = 0, font = 3)
#text(2.5, 0.23, "lab2", cex = 0.7, adj = 0, font = 3)
text(4.3, -0.018, "labx", cex = 0.7, adj = 0, font = 3)
text(-4.8, 0.445, "labf", cex = 0.7, adj = 0, font = 3)