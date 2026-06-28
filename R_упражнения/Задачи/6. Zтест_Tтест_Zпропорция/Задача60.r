# Да се реши задача 75 от problems_v8.pdf

# Тук отново ползваме z-пропорция за средно

# H0 = 51 
# H1 > 51

n <- 58
x <- 32
p <- 0.51 

z.obs <- (x/n - p) / sqrt(p*(1-p)/sqrt(n))
p.value <- 1 - pnorm(z.obs) 
print(p.value)

# Стойността на p.value < 0.5 така че можем да отхвърлим нулевата теорема


# Можем да направим и тази готова функция
prop.test( x=32, n=58, p=0.51, alternative="greater", correct=F)