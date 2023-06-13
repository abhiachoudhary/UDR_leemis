#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#

nchoosek <- function(n1,n2){gamma(n1 + 1)/(gamma(n2 + 1)*gamma(n1 - n2 + 1))}
beta <- function(a1,b1){(gamma(a1)*gamma(b1))/(gamma(a1 + b1))}
	
cexglobal = 0.9
N = 10
n = 15
x = 0:n

postscript(file = "GammapoissonPlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

a = 2
b = 1
f = (gamma(x+b)*a^x)/(gamma(b)*((1+a)^(b+x))*gamma(x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.35), yaxp = c(0, 0.35, 8),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 5, 10, 15), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35), font.axis = 3, cex.axis = cexglobal)

text(-3, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.05, "0.05",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.10, "0.10",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.15, "0.15",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.20, "0.20",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.25, "0.25",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.30, "0.30",  cex = cexglobal, adj = 0.5, font = 3)
text(-3, 0.35, "0.35",  cex = cexglobal, adj = 0.5, font = 3)
	
text(8, 0.3, "laba2", cex = 0.7, adj = 0, font = 10)
text(8, 0.26, "labb1", cex = 0.7, adj = 0, font = 10)

text(16, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.5, 0.39, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 1
b = 2
f = (gamma(x+b)*a^x)/(gamma(b)*((1+a)^(b+x))*gamma(x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.35), yaxp = c(0, 0.35, 8),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 5, 10, 15), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35), font.axis = 3, cex.axis = cexglobal)

text(8, 0.3, "laba1", cex = 0.7, adj = 0, font = 10)
text(8, 0.26, "labb2", cex = 0.7, adj = 0, font = 10)

text(16, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.5, 0.39, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 1
b = 5
f = (gamma(x+b)*a^x)/(gamma(b)*((1+a)^(b+x))*gamma(x+1))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.35), yaxp = c(0, 0.35, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 5, 10, 15), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35), font.axis = 3, cex.axis = cexglobal)

text(8, 0.3, "laba1", cex = 0.7, adj = 0, font = 10)
text(8, 0.26, "labb5", cex = 0.7, adj = 0, font = 10)

text(16, -0.007, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.5, 0.39, "labf", cex = 0.7, adj = 0, font = 10)
