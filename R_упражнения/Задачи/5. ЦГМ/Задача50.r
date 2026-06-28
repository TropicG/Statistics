# Това е задача 63 от problems_v8.pdf

Nrep <- 1000

# a)
for( n in c(3,7,10,30,90,200)) {
    result <- replicate(1000, mean(rpois(n, 3)))
    hist(result)
}

# б)
for( n in c(3,7,10,30,90,200)) {

    result <- replicate( Nrep, mean( rpois(n, 3) ) )
    plot.ecdf(result, col="blue", lwd=2)
    curve(pnorm(x, 3, qrt(3)/sqrt(n)), add=T, lty="longdash", col="coral")
}