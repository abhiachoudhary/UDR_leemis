bessel.i0 <- function(x)
{
# Modified Bessel function of order zero
# GKS  1 Oct 96
	p1 <- 1
	p2 <- 3.5156229
	p3 <- 3.0899424
	p4 <- 1.2067492
	p5 <- 0.2659732
	p6 <- 0.360768/10
	p7 <- 0.45813/100
	q1 <- 0.39894228
	q2 <- 0.1328592/10
	q3 <- 0.225319/100
	q4 <- -0.157565/100
	q5 <- 0.916281/100
	q6 <- -0.2057706/10
	q7 <- 0.2635537/10
	q8 <- -0.1647633/10
	q9 <- 0.392377/100
	y <- (x/3.75)^2
	ax <- abs(x)
	z <- 3.75/ax
	ifelse(abs(x) < 3.75, p1 + y * (p2 + y * (p3 + y * (p4 + y * (p5 + y * (
		p6 + y * p7))))), (exp(ax)/sqrt(ax)) * (q1 + z * (q2 + z * (q3 + 
		z * (q4 + z * (q5 + z * (q6 + z * (q7 + z * (q8 + z * q9))))))))
		)
}

x = seq(0, 2*pi, by = 0.01) 
mu = pi
kappa = 1
f = exp(kappa*cos(x-mu))/(2*pi*bessel.i0(kappa))

postscript(file = "VonmisesPlot.ps", width = 4.0, height = 3.0, horizontal = F)

par(bty = "l", cex = 0.9, lty = 1, font = 1,
    mai = c(0.5, 0.6, 0.3, 0.3), las = 1)

plot(x, f, type = "l", cex = 0.55, xlab="", ylab="",
     xlim = c(0,2*pi), xaxp = c(0, 1, 1),
     ylim = c(0, 1.0), yaxp = c(0, 1, 1),
     axes = F, font.axis = 3)

axis(side = 1, labels = F, at = c(0, pi, 2*pi),
     font.axis = 3, cex.axis = 0.95)
axis(side = 2, at = c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0),
     font.axis = 3, cex.axis = 0.95)

kappa = 4
f = exp(kappa*cos(x-mu))/(2*pi*bessel.i0(kappa))
lines(x, f, lty = c(1), type ="l", font = 3, cex = 0.5)

text(-.1, -0.17, "lab0", cex = 0.7, adj = 0, font = 3)
text(3, -0.17, "labpi", cex = 0.7, adj = 0, font = 3)
text(6.1, -0.17, "lab2pi", cex = 0.7, adj = 0, font = 3)
	
text(2.6, 0.2, "lab1", cex = 0.7, adj = 0, font = 3)
text(2.6, 0.84, "lab2", cex = 0.7, adj = 0, font = 3)
text(6.55, -0.05, "labx", cex = 0.7, adj = 0, font = 3)
text(-0.65, 1.1, "labf", cex = 0.7, adj = 0, font = 3)
