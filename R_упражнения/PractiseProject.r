# Имаме експеримент с монета 

# H0: p = 1/2
# H1: p > 1/2

n <- 100
x <- 58
p <- 1/2

z.porc <- (x/n - p) / (sqrt(p*(1-p)*(1/n)))
p.value <- 1 - pnorm(z.porc)

print(p.value)