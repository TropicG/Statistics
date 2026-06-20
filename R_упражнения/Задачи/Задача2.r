# Задача 2. В кутия има 3 различни чифта чорапи. Вадим в тъмното 2 чорапа.
# Каква е вероятността извадените два чорапа да са чифт?

sample.take <- function() {
    # дефинираме чорапите, ако са в един цифт са с еднаква цифра
    pairs <- c(1,1,2,2,3,3)

    # взимаме чорапите 
    firstDraw <- sample(pairs, 1)
    secondDraw <- sample(pairs, 1)

    # ако сме взели един цифт ще имат еднакви числа
    return (firstDraw == secondDraw)
}

prob.take <- function(Nrep) {
    result <- replicate(Nrep, sample.take())
    sum(result) / Nrep
}
