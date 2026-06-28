# Задача 9. На студенти е даден тест от 10 въпроса, всеки с по 4 възможни отговора, 
# един от които е верен. Иван се явява на теста без да е учил и огражда 
# произволно отговори. Каква е вероятността да е отговорил вярно на поне 5 от въпросите?

simple.exam <- function(k) {
    # един въпрос е изграден от 1 верен и 3 грешни
    examQuestion <- c(rep(0,3), 1)

    # на k въпроса той избира на случайно един от възможните отговори
    answeredQuestions <- sample( examQuestion, k, replace=T)

    # взел е изпита ако е познал поне 5 от въпросите
    sum(answeredQuestions) == 5
}

prob.exam <- function(Nrep, k) {

    result <- replicate(Nrep, simple.exam(k))

    sum(result) / length(result)
}

#prob.exam(10000, 10)