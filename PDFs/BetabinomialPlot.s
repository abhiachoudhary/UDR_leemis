#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#
cexglobal = 0.9
n = 20
x = 0:n

postscript(file = "BetabinomialPlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

a = 0.7
b = 2
f = (gamma(x+a)*gamma(n-x+b)*gamma(a+b)*gamma(n+2))/((n+1)*gamma(a+b+n)*gamma(a)*gamma(b)*gamma(x+1)*gamma(n-x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.20), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.10, 0.15, 0.20), font.axis = 3, cex.axis = cexglobal)

text(-4, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
text(-4, 0.05, "0.05",  cex = cexglobal, adj = 0.5, font = 3)
text(-4, 0.10, "0.10",  cex = cexglobal, adj = 0.5, font = 3)
text(-4, 0.15, "0.15",  cex = cexglobal, adj = 0.5, font = 3)
text(-4, 0.20, "0.20",  cex = cexglobal, adj = 0.5, font = 3)

text(10, 0.2, "laba7", cex = 0.7, adj = 0, font = 10)
text(10, 0.18, "labb2", cex = 0.7, adj = 0, font = 10)

text(21.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 2
b = 2
f = (gamma(x+a)*gamma(n-x+b)*gamma(a+b)*gamma(n+2))/((n+1)*gamma(a+b+n)*gamma(a)*gamma(b)*gamma(x+1)*gamma(n-x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.20), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.10, 0.15, 0.20), font.axis = 3, cex.axis = cexglobal)

text(10, 0.2, "laba2", cex = 0.7, adj = 0, font = 10)
text(10, 0.18, "labb2", cex = 0.7, adj = 0, font = 10)

text(21.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 6
b = 4
f = (gamma(x+a)*gamma(n-x+b)*gamma(a+b)*gamma(n+2))/((n+1)*gamma(a+b+n)*gamma(a)*gamma(b)*gamma(x+1)*gamma(n-x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.20), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.10, 0.15, 0.20), font.axis = 3, cex.axis = cexglobal)

text(10, 0.2, "laba6", cex = 0.7, adj = 0, font = 10)
text(10, 0.18, "labb4", cex = 0.7, adj = 0, font = 10)

text(21.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)
