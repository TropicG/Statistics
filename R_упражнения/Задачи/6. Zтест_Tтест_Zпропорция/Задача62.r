# Виж задача 77 от problems_v8.pdf

# Първоначалните данни
n <- 200 
x <- 14 
p <- 0.075

# a)

# H0 p = 7.5
# H1 != 7.5

z.obs <- (x/n - p)*(p*(p-1)/n)
p.value <- 2*(1-pnorm(abs(z.obs)))

print(p.value)
# p.value > 0.05 следователно нямаме основание да отхвърлим нулевата хипотеза

# Става и с тази формула
prop.test( x=14, n=200, p=0.075, correct=F)

# б)

# H0 p = 7.5
# H1 p < 7.5

z.obs <- (x/n - p)*(p*(p-1)/n)
p.value <- pnorm(z.obs)

print(p.value)

# p.value > 0.5 => нямаме основания да отхвърлим нулевата хипотеза
prop.test(x = 14, n= 200, p=0.075, alternative="less", correct=F)
