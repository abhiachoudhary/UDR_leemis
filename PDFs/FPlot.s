x = seq(0, 3, by = 0.001) 
n1 = 1
n2 = 1 
f = df(x, df1 = n1, df2 = n2) 

postscript(file = "FPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 3,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0, 3), xaxp = c(0, 1, 1),
     ylim = c(0, 2), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, at = c(0, 1, 2, 3),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0, 0.5, 1.0, 1.5, 2.0),
     font.axis = 3, cex.axis = 0.95)

n1 = 5
n2 = 1 
f = df(x, df1 = n1, df2 = n2) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

n1 = 75
n2 = 75
f = df(x, df1 = n1, df2 = n2) 
lines(x, f, lty = c(1), type = "l", font = 3, cex = 0.5)

# n1 = 1, n2 = 1
text(0.09, 1.99, "lab1", cex = 0.7, adj = 0, font = 10)

# n1 = 5, n2 = 1
text(2.0, 0.19, "lab2", cex = 0.7, adj = 0, font = 10)

# n1 = 75, n2 = 75
text(1.3, 0.91, "lab3", cex = 0.7, adj = 0, font = 10)

text(3.28, -0.07, "labx", cex = 0.7, adj = 0, font = 10)
text(-0.3, 2.25, "labf", cex = 0.7, adj = 0, font = 10)
