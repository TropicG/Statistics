# Задача 45. Във файла cereals.RData има данни за 77 зърнени закуски. 
# Представете графично променливите carbo, sodium и potass; намерете медианата, средната стойност и стандартното отклонение.


my.summary <- function(x) {

    res <- c(median(x), mean(x), sd(x))
    name(res) <- c("Median", "Mean", "StDev")
    res
}

# Зарежда "cereals.RData" в R
load("cereals.RData")

# Показва обобщена статистика (мин., макс., средна стойност и др.) за всяка колона в таблицата cereals
summary(cereals)

# Прикачва таблицата към работната среда, за да можеш да викаш колоните директно по име (напр. carbo вместо cereals$carbo)
attach(cereals)

# Извежда основните статистически показатели за carbo (минимум, квартили, медиана, средна, максимум)
summary(carbo)

# Изчислява средната аритметична стойност и стандартно отклонение на carbo
mean(carbo, na.rm=T)
sd(carbo, na.rm=T)

my.summary(carbo)

# Построява хистограма, за да покаже графично разпределението на стойностите на carbo
hist(carbo)
boxplot(carbo, horizontal=T)

# Анализ на sodium данната
summary(sodium)
mean(sodium)
sd(sodium)
my.summary(sodium)
hist(sodium)
boxplot(carbo, horizontal=T)

# Анализ на potass данната
summary(potass)
mean(potass)
sd(potass)
my.summary(potass)
hist(potass)
boxplot(potass, horizontal=T)
