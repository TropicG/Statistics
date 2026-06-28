
mu <- 6.7 
sigma <- 0.12

n <- 45

# H0 = 6.7
# H1 != 6.7

z.obs <- (H0 - mu) / (sigma * sqrt(n))

p.value <- 2 * (1-pnorm(abs(z.obs)))
