# Задача 46. (Данни survey от пакета MASS .) Намерете медианата, средната стойност и стандартното отклонение на:
# а) пулса на студентите;
# б) пулса на жените;
# в) пулса на студентите на възраст не повече от 25 години;
# г) пулса на студентите, правещи физически упражнения често;
# д) пулса на студентите, които са непушачи и правят физически упражнения често.

my.summary <- function(x) {

    res <- c(median(x), mean(x), sd(x))
    names(res) <- ("Median", "Mean", "Sd")
}

library(MASS)
attach(survey)

# a)
summary(Pulse)
median(Pulse)
mean(Pulse)
sd(Pulse)
my.summary(Pulse)

# б)
summary(Pulse[Sex=="Female"])
median(Pulse[Sex=="Female"])
mean(Pulse[Sex=="Female"])
sd(Pulse[Sex=="Female"])
my.summary(Pulse[Sex=="Female"])

# в)
summary(Pulse[Age<=25])
median(Pulse[Age<=25])
mean(Pulse[Age<=25])
sd(Pulse[Age<=25])
my.summary(Pulse[Age<=25])

# г)
median( Pulse[Exer=="Freq"], na.rm=T )
mean( Pulse[Exer=="Freq"], na.rm=T )
sd( Pulse[Exer=="Freq"], na.rm=T )
my.summary( Pulse[Exer=="Freq"] )

# д)
median( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )
mean( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )
sd( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )
my.summary( Pulse[Smoke=="Never" & Exer=="Freq"] )
