#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#

nchoosek <- function(n1, n2){gamma(n1 + 1)/(gamma(n2 + 1)*gamma(n1 - n2 + 1))}
	
cexglobal = 0.8
x = 0:10
n3 = 50
n1 = 15
n2 = 10
f = nchoosek(n1,x)*nchoosek(n3 - n1, n2 - x)/nchoosek(n3,n2)
	
postscript(file = "HypergeometricPlot.ps", width = 4.4, height = 2.4, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.4, 0.37, 0.3, 0.2), las = 1)

plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, 10), xaxp = c(0, 16, 9),
     ylim = c(0, 0.3), yaxp = c(0, 0.3, 4),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6, 8, 10), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = T, at = c(0, 0.10, 0.20, 0.3), font.axis = 3, cex.axis = cexglobal)

text(10.5, -0.008, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.8, 0.35, "labf", cex = 0.7, adj = 0, font = 3)
