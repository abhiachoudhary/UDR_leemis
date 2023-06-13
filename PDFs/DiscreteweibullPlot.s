#
#  BinomialPlot.s:  Make a plot of the probability mass function for the binomial distribution 
#
cexglobal = 0.9
n = 6
x = 0:n

postscript(file = "DiscreteweibullPlot.ps", width = 6.0, height = 2.4, horizontal = F)

par(mfrow = c(1, 3))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.37, 0.3, 0.2), las = 1)

p = 0.3
beta = 1
f = (1-p)^(x^beta) - (1-p)^((x+1)^beta)
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.7), yaxp = c(0, 0.7, 8),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3, 0.4, 0.5, 0.6, 0.7), font.axis = 3, cex.axis = cexglobal)

text(-1.2, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.1, "0.1",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.2, "0.2",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.3, "0.3",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.4, "0.4",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.5, "0.5",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.6, "0.6",  cex = cexglobal, adj = 0.5, font = 3)
text(-1.2, 0.7, "0.7",  cex = cexglobal, adj = 0.5, font = 3)
	
text(3, 0.6, "labp3", cex = 0.7, adj = 0, font = 10)
text(3, 0.53, "labb1", cex = 0.7, adj = 0, font = 10)

text(6.3, -0.014, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.6, 0.77, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

p = 0.6
beta = 1
f = (1-p)^(x^beta) - (1-p)^((x+1)^beta)
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.7), yaxp = c(0, 0.7, 8),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3, 0.4, 0.5, 0.6, 0.7), font.axis = 3, cex.axis = cexglobal)

text(3, 0.6, "labp6", cex = 0.7, adj = 0, font = 10)
text(3, 0.53, "labb1", cex = 0.7, adj = 0, font = 10)

text(6.3, -0.014, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.6, 0.77, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

p = 0.3
beta = 2
f = (1-p)^(x^beta) - (1-p)^((x+1)^beta)
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(0, n), xaxp = c(0, n, 10),
     ylim = c(0, 0.7), yaxp = c(0, 0.7, 8),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(0, 2, 4, 6), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.10, 0.20, 0.3, 0.4 , 0.5, 0.6, 0.7), font.axis = 3, cex.axis = cexglobal)

text(3, 0.6, "labp3", cex = 0.7, adj = 0, font = 10)
text(3, 0.53, "labb2", cex = 0.7, adj = 0, font = 10)

text(6.3, -0.014, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.6, 0.77, "labf", cex = 0.7, adj = 0, font = 10)

