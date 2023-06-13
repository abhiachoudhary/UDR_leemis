#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#
cexglobal = 0.9
x1 = seq(-4, 0, by = 0.01)
x2 = seq(0,4, by = 0.01)

postscript(file = "LaplacePlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

a1 = 1
a2 = 1
f1 = (1/(a1+a2))*exp(x1/a1)
f2 = (1/(a1+a2))*exp(-x2/a2)
	
par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

plot(x1, f1, type = "l",
     cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 4), xaxp = c(0, n, 10),
     ylim = c(0, 0.5), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(-4, -3, -2, -1, 0, 1, 2, 3, 4), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5), font.axis = 3, cex.axis = cexglobal)

lines(x2, f2, lty = c(1), type = "l", font = 3, cex = 0.5)
	
text(-5.2, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
text(-5.2, 0.1, "0.1",  cex = cexglobal, adj = 0.5, font = 3)
text(-5.2, 0.2, "0.2",  cex = cexglobal, adj = 0.5, font = 3)
text(-5.2, 0.3, "0.3",  cex = cexglobal, adj = 0.5, font = 3)
text(-5.2, 0.4, "0.4",  cex = cexglobal, adj = 0.5, font = 3)
text(-5.2, 0.5, "0.5",  cex = cexglobal, adj = 0.5, font = 3)

text(1, 0.45, "laba11", cex = 0.7, adj = 0, font = 10)
text(1, 0.4, "laba21", cex = 0.7, adj = 0, font = 10)

#text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
text(-4.7, 0.56, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a1 = 1
a2 = 2
f1 = (1/(a1+a2))*exp(x1/a1)
f2 = (1/(a1+a2))*exp(-x2/a2)
	
plot(x1, f1, type = "l",
     cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 4), xaxp = c(0, n, 10),
     ylim = c(0, 0.5), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(-4, -3, -2, -1, 0, 1, 2, 3, 4), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5), font.axis = 3, cex.axis = cexglobal)

lines(x2, f2, lty = c(1), type = "l", font = 3, cex = 0.5)

text(1, 0.45, "laba11", cex = 0.7, adj = 0, font = 10)
text(1, 0.4, "laba22", cex = 0.7, adj = 0, font = 10)
text(-4.7, 0.56, "labf", cex = 0.7, adj = 0, font = 10)	
#text(20, 0.2, "labn30", cex = 0.7, adj = 0, font = 10)
#text(20, 0.18, "labp12", cex = 0.7, adj = 0, font = 10)

#text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
#text(-4.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

a1 = 2
a2 = 1
f1 = (1/(a1+a2))*exp(x1/a1)
f2 = (1/(a1+a2))*exp(-x2/a2)
	
plot(x1, f1, type = "l",
     cex = 0.55, xlab="", ylab="",
     xlim = c(-4, 4), xaxp = c(0, n, 10),
     ylim = c(0, 0.5), yaxp = c(0, 0.20, 3),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(-4, -3, -2, -1, 0, 1, 2, 3, 4), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5), font.axis = 3, cex.axis = cexglobal)

lines(x2, f2, lty = c(1), type = "l", font = 3, cex = 0.5)	

text(1, 0.45, "laba12", cex = 0.7, adj = 0, font = 10)
text(1, 0.4, "laba21", cex = 0.7, adj = 0, font = 10)
text(-4.7, 0.56, "labf", cex = 0.7, adj = 0, font = 10)
#text(9, 0.2, "labn30", cex = 0.7, adj = 0, font = 10)
#text(9, 0.18, "labp56", cex = 0.7, adj = 0, font = 10)

#text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
#text(-4.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)
