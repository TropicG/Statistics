# Задача 42. Разгледайте данните survey от пакета MASS. 
# Представете таблично и графично данните за физическите упражнения (Exer).

# Зареждане на пакета MASS
library(MASS)
# Зарежда конкретния набор от данни, наречен survey
data(survey)
# Отваря помощнмата документация за този набор от данни
?survey

# създаване на таблица за променливата Exer, която се намира в таблицата survey
table(survey$Exer)

# Това ни позволява директно да търсим в колоните на survey, затова долу като използваме Exer
# Това би било равно на survey$Exer
attach(survey)
table(Exer)

# сортира данните в таблицата 
sort( table(Exer), decrasing=T )

# тези долните 2 реда правят едно и също
100*table(Exer) / length(Exer)
100*prop.table( table(Exer) )

# прави нормално стълбовида диаграма на данните
barplot( table(Exer) )
barplot( sort(table(Exer), decreasing=T) )
barplot( 100*table(Exer)/length(Exer) )

# прави диаграма пай
pie( table(Exer) )
