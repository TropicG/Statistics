# Задача 7. На всеки от върховете на равностранен триъгълник има една мравка. 
# Всяка мравка избира произволно един от другите два върха и тръгва към него. 
# За единица време всяка мравка изминава разстоянието от един връх до друг. 
# Две мравки могат да се разминат, ако тръгнат една срещу друга. 
# Каква е вероятността след единица време да има по една мравка на всеки връх?

simple.antChoice <- function() {

    # Изборите на първата втората и третата мравка
    antChoice2 <- sample(c(1,3), 1)
    antChoice3 <- sample(c(2,1), 1)
    antChoice1 <- sample(c(3,2), 1)

    allChoices <- c(antChoice1, antChoice2, antChoice3)

    length(unique(allChoices)) == 3
}

prob.antChoice <- function(Nrep) {
    res <- replicate(Nrep, simple.antChoice())
    sum(res)/length(res)
}