#  cex and cex.lab not giving any change in label size
Beta <- function(v1,v2){(gamma(v1)*gamma(v2))/gamma(v1 + v2)}
	
postscript(file = "InvertedbetaPlot.ps", width = 6.0, height = 6.0, horizontal = F)

par(mfrow = c(2, 2))

par(oma = c(0, 1.0, 0, 0))

################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.52, 0.6, 0.3, 0.2), las = 1)

x = seq(0, 3, by = 0.005)
beta = 1
gamma = 1
f = ((x^(beta - 1))*(1+x)^(-beta-gamma))/(Beta(beta,gamma))

plot(x, f, type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 3), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1, 2, 3), font.axis = 3, cex.axis = 1.6)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 1.6)

text(-0.8, 0.90, "lab1", cex = 0.7, adj = 0.5, srt = 90, font = 10)

text(1, 2.2, "lab2", cex = 0.7, adj = 0.5, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.52, 0.6, 0.3, 0.2), las = 1)

x = seq(0, 3, by = 0.005)
beta = 1
gamma = 2
f = ((x^(beta - 1))*(1+x)^(-beta-gamma))/(Beta(beta,gamma))


plot(x, f, type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 3), xaxp = c(0, 60, 6),
    ylim = c(0, 2), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1, 2, 3), font.axis = 3, cex.axis = 1.6)
axis(side = 2, labels = T, ticks = T, at = c(0, 2), font.axis = 3, cex.axis = 1.6)

text(1, 2.2, "lab3", cex = 0.7, adj = 0.5, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.52, 0.6, 0.3, 0.2), las = 1)

x = seq(0, 3, by = 0.005)
beta = 2
gamma = 1
f = ((x^(beta - 1))*(1+x)^(-beta-gamma))/(Beta(beta,gamma))


plot(x, f, type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 3), xaxp = c(0, 60, 6),
    ylim = c(0, 1), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1, 2, 3), font.axis = 3, cex.axis = 1.6)
axis(side = 2, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 1.6)

text(-0.8, 0.45, "lab4", cex = 0.7, adj = 0.5, srt = 90, font = 10)

##################################################################

par(bty = "l", cex = 0.9, lty = 1, font = 3,
  #   family = "serif",
  mai = c(0.52, 0.6, 0.3, 0.2), las = 1)

x = seq(0, 3, by = 0.005)
beta = 2
gamma = 2
f = ((x^(beta - 1))*(1+x)^(-beta-gamma))/(Beta(beta,gamma))


plot(x, f, type = "l",
    cex = 0.55, xlab="", ylab="",
    xlim = c(0, 3), xaxp = c(0, 60, 6),
    ylim = c(0, 1), yaxp = c(0, 0.15, 3),
    axes = F,
    font.axis = 3)

axis(side = 1, labels = T, ticks = T, at = c(0, 1, 2, 3), font.axis = 3, cex.axis = 1.6)
axis(side = 2, labels = T, ticks = T, at = c(0, 1), font.axis = 3, cex.axis = 1.6)
