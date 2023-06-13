x = seq(0.01, 4.00, by = 0.01) 

a1 = 0.25
a2 = 0.5
a3 = 1

f = (1/a1)*exp(-x/a1)*(a1/(a1-a2))*(a1/(a1-a3)) + (1/a2)*exp(-x/a2)*(a2/(a2-a1))*(a2/(a2-a3)) + (1/a3)*exp(-x/a3)*(a3/(a3-a1))*(a3/(a3-a2)) 

postscript(file = "HypoexponentialPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 4), xaxp = c(0, 1, 1),
     ylim = c(0, 0.5), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3, 4),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5),
     font.axis = 3, cex.axis = 0.95)

text(4.18, -0.02, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.4, 0.56, "labf", cex = 0.7, adj = 0, font = 10)
