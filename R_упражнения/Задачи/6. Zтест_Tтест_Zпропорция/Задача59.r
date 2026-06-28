# Гледаме задача 74 от problems_v8.pdf

# Тук се решава чрез t-тест за средно
# Причината за това е понеже имаме малък на брой данни 

# H0: mu = 4
# H0: mu < 4

x <- c(3.1, 3.0, 3.7, 2.6, 4.2, 3.8, 3.6, 2.7, 3.8, 4.4)
mu <- 4
n <- length(x)
x.bar <- mean(x)
s <- sd(x)

t.obs <- (x.bar - mu)/(s/sqrt(n))
t.obs
p.value <- pt(t.obs, n-1)
p.value
