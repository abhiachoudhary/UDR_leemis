
cexglobal = 0.9
n = 20
x = 1:n

postscript(file = "LogarithmPlot.ps", width = 6.8, height = 2.8, horizontal = F)

par(mfrow = c(1, 2))

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.4, 0.37, 0.3, 0.2), las = 1)

c = 0.1
f = (-(1-c)^x)/(x*log(c))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(1, n), xaxp = c(1, n, 5),
     ylim = c(0, 0.8), yaxp = c(0, 0.8, 9),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(1, 5, 10, 15, 20), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = T, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8), font.axis = 3, cex.axis = cexglobal)

#text(-6, 0.0, "0.0",  cex = cexglobal, adj = 0.5, font = 3)
#text(-6, 0.05, "0.05",  cex = cexglobal, adj = 0.5, font = 3)
#text(-6, 0.10, "0.10",  cex = cexglobal, adj = 0.5, font = 3)
#text(-6, 0.15, "0.15",  cex = cexglobal, adj = 0.5, font = 3)
#text(-6, 0.20, "0.20",  cex = cexglobal, adj = 0.5, font = 3)

text(12, 0.6, "labp1", cex = 0.7, adj = 0, font = 10)

text(20.5, -0.02, "labx", cex = 0.7, adj = 0, font = 10)
text(-1.5, 0.88, "labf", cex = 0.7, adj = 0, font = 10)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
   mai = c(0.4, 0.3, 0.3, 0.2), las = 1)

n = 5
x = 1:n
c = 0.5
f = (-(1-c)^x)/(x*log(c))
	
plot(x, f, type = "h",
     cex = 0.55, xlab="", ylab="",
     xlim = c(1, n), xaxp = c(1, n, 5),
     ylim = c(0, 0.8), yaxp = c(0, 0.8, 9),
     axes = F,
     font.axis = 3)

axis(side = 1, labels = T, at = c(1, 2, 3, 4, 5), font.axis = 3, cex.axis = cexglobal)
axis(side = 2, labels = F, at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8), font.axis = 3, cex.axis = cexglobal)

text(3.5, 0.6, "labp2", cex = 0.7, adj = 0, font = 10)

text(5.2, -0.02, "labx", cex = 0.7, adj = 0, font = 10)
text(0.6, 0.88, "labf", cex = 0.7, adj = 0, font = 10)

#par(bty = "l", cex = 0.9, lty = 1, font = 3,
#   mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

#plot(x, dbinom(x, n, 5 / 6), type = "h",
#     cex = 0.55, xlab="", ylab="",
#     xlim = c(0, 30), xaxp = c(0, n, 10),
#     ylim = c(0, 0.20), yaxp = c(0, 0.20, 3),
#     axes = F,
#     font.axis = 3)

#axis(side = 1, labels = T, at = c(0, 10, 20, 30), font.axis = 3, cex.axis = cexglobal)
#axis(side = 2, labels = F, at = c(0, 0.05, 0.10, 0.15, 0.20), font.axis = 3, cex.axis = cexglobal)

#text(9, 0.2, "labn30", cex = 0.7, adj = 0, font = 10)
#text(9, 0.18, "labp56", cex = 0.7, adj = 0, font = 10)

#text(33.5, -0.005, "labx", cex = 0.7, adj = 0, font = 10)
#text(-4.0, 0.225, "labf", cex = 0.7, adj = 0, font = 10)
