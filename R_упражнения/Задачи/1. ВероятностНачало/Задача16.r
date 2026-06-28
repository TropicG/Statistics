# Задача 16. Тесте от 52 карти е разбъркано и е раздадено на 4 играчи. Каква е вероятността всеки играч да има едно асо?


simple.cardTake <- function() {

    allCards <- c(rep(0,48), rep(1,4))

    allGivenCards <- sample(allCards, 52, replace=F)

    playerOneHasAce <- sum(allGivenCards[1:13])==1
    playerTwoHasAce <- sum(allGivenCards[14:26])==1
    playerThreeHasAce <- sum(allGivenCards[27:39])==1
    playerFourHasAce <- sum(allGivenCards[40:52])==1

    return(playerOneHasAce&playerTwoHasAce&playerThreeHasAce&playerFourHasAce)
}


Nrep <- 10000
result <- replicate(Nrep, simple.cardTake())
prob <- sum(result)/length(result)
print(prob)