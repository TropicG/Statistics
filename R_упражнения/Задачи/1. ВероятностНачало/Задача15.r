# Задача 15. 
# Група от 20 човека, измежду които са Иван и Георги, 
# е подредена по случаен начин в редица. 
# Каква е вероятността Иван и Георги да са един до друг?

simple.group <- function() {

  # това представлява цялата група
  group <- c(1:20)
  
  # избираме позициите на иван и георги
  IvanGeorgiPosition <- sample(group, 2, replace=F)
  
  # ако георги и иван са на една позицията, абсолютната стойност на тяхната разлика на позициите им винаги ще е 1
  return(abs(IvanGeorgiPosition[1] - IvanGeorgiPosition[2]) == 1)
}

Nrep <- 100000
result <- replicate(Nrep, simple.group())

prob <- sum(result) / length(result)
print(prob)