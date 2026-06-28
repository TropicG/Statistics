# Това е задача 62 от problems_v8.pdf

Nrep <- 1000

# a)

for( n in c(3,7,10,30,90,200)) {
    result <- replicate(Nrep, sum(rpois(n, 3)))
    hist(result)
}

# б)

for( n in c(3,7,10,30,90,200)) {

    result <- replicate(Nrep, sum( rpois(n,3) ))

    plot.ecdf(result, col="blue", lwd=2)
    curve(pnorm(x, 3*n, sqrt(3*n)), col="red", lty="longdash")
}