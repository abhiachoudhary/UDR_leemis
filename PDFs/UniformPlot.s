x = c(0, 3)
f = c(2 / 3, 2 / 3) 

postscript(file = "UniformPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, .75), yaxp = c(0, 1, 1),
     axes = F,
     font.axis = 3)

#xx = c(1, 3) 
#ff = c(2 / 3, 0) 
#lines(xx, ff, lty = c(1), col = c(1), type="l", font = 3, cex = 0.5)

axis(side = 1, ticks = T, labels = F, at = c(0, 3), font.axis = 3, cex.axis = 0.95)
axis(side = 2, ticks = T, labels = F, at = c(0, 2 / 3, .75), font.axis = 3, cex.axis = 0.95)

#  text(0, -0.123, "a",  cex = 0.95, adj = 0.5, font = 10)
#  text(1, -0.123, "b",  cex = 0.95, adj = 0.5, font = 10)
#  text(3, -0.123, "c",  cex = 0.95, adj = 0.5, font = 10)

#  text(3.25, -0.023, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-0.204, 0.73, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-0.175, 0.73, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-0.155, 0.73, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-0.130, 0.73, "   )",  cex = 0.95, adj = 0, font = 3)

text(0, -0.123, "laba", cex = 0.7, adj = 0, font = 10)
text(3, -0.123, "labb", cex = 0.7, adj = 0, font = 10)
text(-.6, 2/3, "labff", cex = 0.7, adj = 0, font = 10)
	
text(3.25, -0.025, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.29, 0.84, "labf", cex = 0.7, adj = 0, font = 10)
