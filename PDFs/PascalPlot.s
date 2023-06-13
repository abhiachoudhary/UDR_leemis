#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#

nchoosek <- function(n1, n2){gamma(n1 + 1)/(gamma(n2 + 1)*gamma(n1 - n2 + 1))}
	
cexglobal = 0.8
x = 0:16
n = 2
p = 0.25
f = nchoosek(n-1+x,x)*(p^n)*(1-p)^x
	
postscript(file = "PascalPlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, 16), xaxp = c(0, 16, 9),
     ylim = c(0, 0.3), yaxp = c(0, 0.3, 4),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6, 8, 10, 12, 14, 16), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3), font.axis = 3, cex.axis = cexglobal)

text(-2.6, 0.0 , "0.0 ",  cex = cexglobal, adj = 0.5, font = 3)
text(-2.6, 0.1 , "0.1 ",  cex = cexglobal, adj = 0.5, font = 3)
text(-2.6, 0.2 , "0.2 ",  cex = cexglobal, adj = 0.5, font = 3)
text(-2.6, 0.3 , "0.3 ",  cex = cexglobal, adj = 0.5, font = 3)

text(8, 0.26, "labn2", cex = 0.7, adj = 0, font = 10)
text(8, 0.23, "labp25", cex = 0.7, adj = 0, font = 10)

text(17, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.8, 0.33, "labf", cex = 0.7, adj = 0, font = 10)
	
n = 2
p = 0.5
f = nchoosek(n-1+x,x)*(p^n)*(1-p)^x
	
par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, 16), xaxp = c(0, 16, 9),
     ylim = c(0, 0.3), yaxp = c(0, 0.3, 4),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6, 8, 10, 12, 14, 16), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3), font.axis = 3, cex.axis = cexglobal)

text(8, 0.26, "labn2", cex = 0.7, adj = 0, font = 10)
text(8, 0.23, "labp5", cex = 0.7, adj = 0, font = 10)

text(17, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.8, 0.33, "labf", cex = 0.7, adj = 0, font = 10)
	
n = 5
p = 0.5
f = nchoosek(n-1+x,x)*(p^n)*(1-p)^x
	
par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, 16), xaxp = c(0, 16, 9),
     ylim = c(0, 0.3), yaxp = c(0, 0.3, 4),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6, 8, 10, 12, 14, 16), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3), font.axis = 3, cex.axis = cexglobal)

text(8, 0.26, "labn5", cex = 0.7, adj = 0, font = 10)
text(8, 0.23, "labp5", cex = 0.7, adj = 0, font = 10)

text(17, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.8, 0.33, "labf", cex = 0.7, adj = 0, font = 10)
