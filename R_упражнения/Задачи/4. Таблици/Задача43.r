# Задача 43. Данни survey от пакета MASS.
# Представете чрез подходящи таблици и графики данните за пулса на студентите (Pulse).

library(MASS)
data(survey)
?survey

table(survey$Pulse)
attach(survey)
table(Pulse)

sort( table(Pulse), decrasing=T )

barplot( table(Pulse) )
barplot( sort(table(Exer), decrasing=T) )
barplot( 100*table(Exer)/length(Exer))

pie( table(Exer) )