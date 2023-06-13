nchoosek <- function(n1,n2){gamma(n1 + 1)/(gamma(n2 + 1)*gamma(n1 - n2 + 1))}
	
x = 0:20 
n1 = 5
n2 = 20
n3 = 30
f = (nchoosek(n1+x-1,x)*nchoosek(n3-n1+n2-x-1,n2-x))/nchoosek(n3+n2-1,n2)

postscript(file = "NegativehypergeometricPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   #   family = "serif", 
   mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "h", cex = 0.55, xlab="", ylab="",
   xlim = c(0, 20), xaxp = c(0, 1, 1),
   ylim = c(0, 0.2), yaxp = c(0, 1, 1),
   axes = F,
   font.axis = 3)

axis(side = 1, at = c(0, 5, 10, 15, 20), font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.1, 0.2), font.axis = 3, cex.axis = 0.95)

#axis(side = 2, at = c(0, 0.1, 0.2), labels=rep("", 4), line = 0.0)
#axis(side = 2, at = c(0, 0.1, 0.2), ticks=F, font.axis = 3, cex.axis = 0.95, line = 0.2)

#  text(21.7, -0.005, "x",  cex = 0.95, adj = 0, font = 10)
#  text(-1.37, 0.171, "f   ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.24, 0.171, " (  ",  cex = 0.95, adj = 0, font = 3)
#  text(-1.14, 0.171, "  x ",  cex = 0.95, adj = 0, font = 10)
#  text(-1.00, 0.171, "   )",  cex = 0.95, adj = 0, font = 3)

text(21.3, -0.006, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.8, 0.22, "labf", cex = 0.7, adj = 0, font = 10)
