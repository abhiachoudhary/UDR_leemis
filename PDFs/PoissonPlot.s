x = 0:20 
f = dpois(x, 107 * 0.08) 

postscript(file = "PoissonPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab="", ylab="",
   xlim = c(0, 20), xaxp = c(0, 1, 1),
   ylim = c(0, 0.15), yaxp = c(0, 1, 1),
   axes = F,
   font.axis = 3)

axis(side = 1, at = c(0, 5, 10, 15, 20), font.axis = 3, cex.axis = 0.95)
#  axis(side = 2, at = c(0, 0.05, 0.10, 0.15), font.axis = 3, cex.axis = 0.95)

axis(side = 2, at = c(0, 0.05, 0.10, 0.15), labels=rep("", 4), line = 0.0)
axis(side = 2, at = c(0, 0.05, 0.10, 0.15), ticks=F, font.axis = 3, cex.axis = 0.95, line = 0.2)

#  text(21.7, -0.005, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-1.37, 0.171, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.24, 0.171, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-1.14, 0.171, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.00, 0.171, "   )",  cex = 0.95, adj = 0, font = 3)

text(21.7, -0.006, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.8, 0.171, "labf", cex = 0.7, adj = 0, font = 10)
