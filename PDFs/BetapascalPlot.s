#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#

nchoosek <- function(n1,n2){gamma(n1 + 1)/(gamma(n2 + 1)*gamma(n1 - n2 + 1))}
beta <- function(a1,b1){(gamma(a1)*gamma(b1))/(gamma(a1 + b1))}
	
cexglobal = 0.9
N = 10
n = 30
x = 0:n

postscript(file = "BetapascalPlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

a = 1
b = 1
f = nchoosek(N-1+x,x)*(beta(N+a,b+x)/beta(a,b))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.1), yaxp = c(0, 0.05, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20, 30), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1), font.axis = 3, cex.axis = cexglobal)

text(-6, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
text(-6, 0.05, "0.05",  cex = cexglobal, adj = 0.5, font = 3)
text(-6, 0.10, "0.10",  cex = cexglobal, adj = 0.5, font = 3)
#text(-4, 0.15, "0.15",  cex = cexglobal, adj = 0.5, font = 3)
#text(-4, 0.20, "0.20",  cex = cexglobal, adj = 0.5, font = 3)

text(15, 0.07, "laba1", cex = 0.7, adj = 0, font = 10)
text(15, 0.06, "labb1", cex = 0.7, adj = 0, font = 10)

text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.11, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 1
b = 2
f = nchoosek(N-1+x,x)*(beta(N+a,b+x)/beta(a,b))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.1), yaxp = c(0, 0.1, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20, 30), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1), font.axis = 3, cex.axis = cexglobal)

text(15, 0.07, "laba1", cex = 0.7, adj = 0, font = 10)
text(15, 0.06, "labb2", cex = 0.7, adj = 0, font = 10)

text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.11, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a = 2
b = 2
f = nchoosek(N-1+x,x)*(beta(N+a,b+x)/beta(a,b))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.1), yaxp = c(0, 0.1, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 10, 20, 30), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.05, 0.1), font.axis = 3, cex.axis = cexglobal)

text(15, 0.07, "laba2", cex = 0.7, adj = 0, font = 10)
text(15, 0.06, "labb2", cex = 0.7, adj = 0, font = 10)

text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-3.0, 0.11, "labf", cex = 0.7, adj = 0, font = 10)
