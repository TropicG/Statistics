# Задача 12.
# Разглеждаме три типа монети: 
# - тип T11: имат изписана единица от двете страни;
# - тип T22: имат двойка от двете страни;
# - тип T12: имат единица от едната страна и двойка от другата.
# 
# В кутия има:
# - две монети T11;
# - една монета T22;
# - две монети T12.
# Общо: 5 монети.
# 
# Теглим произволна монета и я хвърляме.
# 
# а) Каква е вероятността да се падне единица?
# б) Ако горната страна на хвърлената монета е единица, 
#    каква е вероятността другата страна да е двойка?

simple.coin.a <- function() {

    # това ни е кутията със всички монети
    coins <- list(rep(c(1,1), 2), c(2,2), rep(c(1,2), 2))

    # взимаме си произволна кутия
    randomCoinTake <- sample(coins, 1, replace=F)[[1]]

    # хвърляме монетата
    randomCoinSide <- sample(randomCoinTake, 1, replace=F)

    # това е шансът да се е паднала 1ца
    randomCoinSide==1
}

simple.coin.b <- function() {

    coins <- list(rep(c(1,1), 2), c(2,2), rep(c(1,2), 2))

    randomCoinTake <- sample(coins, 1, replace=F)[[1]]

    randomCoinTake[1]==2
}

Nrep <- 10000
result <- replicate(Nrep, simple.coin.a())
print(sum(result)/length(result))

Nrep <- 10000
resultB <- replicate(Nrep, simple.coin.b())
print(sum(resultB)/length(resultB))



