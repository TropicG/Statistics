# Решаваме задача 66 от problems_v8.pdf

means.values <- replicate(100000, runif(50, 0, 60))
sum(mean.vals > 25 & means.vals < 35) / length(mean.vals)
hist(mean.vals)