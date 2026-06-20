# Задача 5: Каква е вероятността в група от 25 човека поне двама да имат рожден ден на един и същи ден от годината?

sim.bday <- function(k) {
    # взимаме 25 пъти дни от годиниата
    bdays <- sample(c(1:365), k, replace=T)
    # ако има дубликация значи наистина двама имат един и същи ден от годината
    any(duplicated(bdays))
}

prob.bdays <- function(Nrep, k) {
    result <- replicate(Nrep, sim.bday(k))
    sum(result) / length(result)
}