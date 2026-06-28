# Имаме експеримент с монета 

Nrep <- 1000

for(n in c(3,7,10,30,90,200)) {
    xsum <- replicate(Nrep, sum(rpois(n, 3)))
    hist(xsum)
}

for(n in c(3,7,10,30,90,200)) {
    xsum <- replicate(Nrep, sum(rpois(n,3)))
    plot.ecdf(xsum, lwd=2, col="black")
    curve(pnorm(x, 3*x, ))
}