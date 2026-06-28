# Виж задача 61 в problems_v8.pdf

Nrep <- 10000

# a)
for (n in c(3,7,10,30,90,200)) {
    result <- replicate( Nrep, mean(rexp(n, 1/5)))
    hist(result)
}

# б)
for ( n in c(3,7,10,30,90,200) ) {
    result <- replicate(Nrep, mean(rexp(n, 1/ 5)))
    plot.ecdf(result, col="red")
    curve( pnorm(x, 5, 5/sqrt(n)), add=T, col="coral", lty="longdash")
}
