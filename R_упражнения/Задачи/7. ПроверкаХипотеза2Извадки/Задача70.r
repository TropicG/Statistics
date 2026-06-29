# Погледни условието на задача 80та


x.bar <- 7.88
s.x <- 1.73
y.bar <- 8.48
s.y <- 2.12
n <- 50
m <- 50

t.obs <- (x.bar - y.bar) / sqrt(s.x^2/n + s.y^2/m)
t.obs
df <- (s.x^2/n + s.y^2/m)^2 / (((s.x^2/n)^2)/(n-1) + ((s.y^2/m)^2)/(m-1))
df
p.value <- 2*(1-pt(abs(t.obs), df))
p.value 