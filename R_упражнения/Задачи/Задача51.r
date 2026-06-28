# Това е задача 65 от problems_v8.pdf

mean.vals <- replicate(100000, mean(rexp(100, 1/900)))
sum(mean.vals > 980)/length(mean.vals)
hist(mean.vals)