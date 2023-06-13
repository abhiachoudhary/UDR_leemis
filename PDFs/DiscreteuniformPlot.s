x = 0:6
f = c(1/6,1/6,1/6,0,1/6,1/6,1/6) 

postscript(file = "DiscreteuniformPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 6), xaxp = c(0, 6, 6),
     ylim = c(0, 0.2), yaxp = c(0, 0.22, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 4, 5, 6), labels = rep("",6), line = 0.0)
# axis(side = 1, at = c(0, 1, 2, 3, 4, 5), font.axis = 3, cex.axis = 0.95)
#  axis(side = 2, at = c(0, 0.01, 0.02, 0.03), font.axis = 3, cex.axis = 0.95)

axis(side = 2, at = c(0,1/6), labels=rep("", 2), line = 0.0)
#axis(side = 2, at = c(0,1/6,0.3), ticks=F, font.axis = 3, cex.axis = 0.95, line = 0.2)

#  text(43.5, -0.001, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-2.9, 0.034, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-2.3, 0.034, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-1.8, 0.034, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.2, 0.034, "   )",  cex = 0.95, adj = 0, font = 3)

text(-0.05, -0.035, "laba", cex = 0.7, adj = 0, font = 10)
text(5.95, -0.035, "labb", cex = 0.7, adj = 0, font = 10)
text(6.3, -0.0065, "labx", cex = 0.7, adj = 0, font = 10)
text(-.6, 0.195, "labf", cex = 0.7, adj = 0, font = 10)
text(2.8, 1/12, "lab1", cex = 0.7, adj = 0, font = 10)
text(2.8, -0.035, "lab2", cex = 0.7, adj = 0, font = 10)
text(-1.6, 0.1667, "labff", cex = 0.7, adj = 0, font = 10)
