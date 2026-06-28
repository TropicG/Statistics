# Задача 17. На първия етаж на административна сграда 7 души чакат асансьора. Всеки 
# от тях отива в някой от офисите в сградата. Сградата има 16 етажа и на всеки етаж има 
# равен брой офиси (на първия етаж няма офиси).
#   а) Каква е вероятността поне двама от чакащите да отиват на един и същи етаж?
#   б) Ако Вие сте един от седемте, каква е вероятността поне един от останалите 6 да отива 
#   на Вашия етаж?

simple.elevator.choice.a <- function() {
    # тук всичките 7 човека си избират на кой етаж да отидат
    allPeopleChoices <- sample(c(1:15), 7, replace=T)
    # проверяваме дали 2ма ще отидат на един етаж
    any(duplicated(allPeopleChoices))
}

Nrep <- 10000
resultA <- replicate(Nrep, simple.elevator.choice.a())
probA <- sum(resultA) / length(resultA)
print(probA)


simple.elevator.choice.b <- function() {

    # ние сме на единият етаж и си избираме на кой етаж да отидем
    chosenFloor <- sample(c(1:15), 1)

    # останалите 6 човека си избират да отидат на някой етаж
    otherPeopleFloors <- sample(c(1:15), 6, replace=T)

    # проверяваме дали някой ще отиде на същия етаж като нас
    any(chosenFloor == otherPeopleFloors)
}

resultB <- replicate(Nrep, simple.elevator.choice.b())
probB <- sum(resultB)/length(resultB)
print(probB)