#  cex and cex.lab not giving any change in label size

postscript(file = "BetaPlot.ps", width = 6.0, height = 6.0, horizontal = F)

par(mfrow = c(3, 3))

par(oma = c(0, 1.0, 0, 0))

################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1 / 2
beta = 1 / 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

text(-0.235, 0.90, "lab1", cex = 0.7, adj = 0.5, srt = 90, font = 10)

text(0.45, 2.2, "lab2", cex = 0.7, adj = 0.5, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1 / 2
beta = 1
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

text(0.45, 2.2, "lab3", cex = 0.7, adj = 0.5, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1 / 2
beta = 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

text(0.45, 2.2, "lab4", cex = 0.7, adj = 0.5, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1
beta = 1 / 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

text(-0.235, 0.90, "lab5", cex = 0.7, adj = 0.5, srt = 90, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1
beta = 1
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 1
beta = 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 2
beta = 1 / 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

text(-0.235, 0.90, "lab6", cex = 0.7, adj = 0.5, srt = 90, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 2
beta = 1
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.28, 0.3, 0.3, 0.2), las = 1)

x = seq(0.005, 0.995, by = 0.005)
alpha = 2
beta = 2
y = beta(x, alpha, beta)

plot(x, dbeta(x, alpha, beta), type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 1), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 0.75)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 0.75)
