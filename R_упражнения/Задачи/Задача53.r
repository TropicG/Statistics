# Решаваме задача 67 от problems_v8.pdf

# Нека имаме X, което е броят на стафиди в една кифла

stafidki <- c(4:7)
probabilities <- c(0.2, 0.4, 0.3, 0.1)

means.vals <- replicate(10000, mean(sample(stafidki, 49, replace=T, prob=probabilities)))
sum(mean.vals > 5.5) / length(mean.vals)