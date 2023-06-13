x = 0:50
f = (35 / 36) ^ x / 36 

postscript(file = "GeometricPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 50), xaxp = c(0, 60, 6),
     ylim = c(0, 0.03), yaxp = c(0, 0.15, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, at = c(0, 10, 20, 30, 40, 50), font.axis = 3, cex.axis = 0.95)
#  axis(side = 2, at = c(0, 0.01, 0.02, 0.03), font.axis = 3, cex.axis = 0.95)

axis(side = 2, at = c(0, 0.01, 0.02, 0.03), labels=rep("", 4), line = 0.0)
axis(side = 2, at = c(0, 0.01, 0.02, 0.03), ticks=F, font.axis = 3, cex.axis = 0.95, line = 0.2)

#  text(43.5, -0.001, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-2.9, 0.034, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-2.3, 0.034, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-1.8, 0.034, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.2, 0.034, "   )",  cex = 0.95, adj = 0, font = 3)

text(54.4, -0.0012, "labx", cex = 0.7, adj = 0, font = 10)
text(-5.0, 0.034, "labf", cex = 0.7, adj = 0, font = 10)
