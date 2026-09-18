
# functions ---------------------------------------------------------------

round(x = 3.141592)
round(3.141592)
round(3.141592, digits = 1)
round(3.141592, digits = 2)
round(3.141592, digits = 3)

round(3.141592, 2)

round(2, 3.141592) # the order of arguments matters for round()
round(digits = 2, 3.141592)

# by default, digits = 0
round(3.141592)
round(3.141592, digits = 0)




# package::name -----------------------------------------------------------

# mpg
# mpg <- "MPG"

ggplot2::mpg


# below line gives an error b/c ggplot2 package is not loaded yet
mpg


library(ggplot2)  # library(tidyverse) b/c/ tidyverse includes ggplot2
mpg # it does call mpg from ggplot2


# Argument order matters for `stringr::str_c()`.
stringr::str_c("Data", "Analytics", sep = " ")  # "Data Analytics"
stringr::str_c("Data", "Analytics") # by default, sep = ""


# below returns error b/c  ...
str_c("Data", "Analytics")


library(stringr)
str_c("Data", "Analytics")




# calculator --------------------------------------------------------------

2 * 3
2 ^ 3


(2 + 3) * 2
2 + 3 * 2


(2 + 3) ^ 2
2 + 3^2




# math --------------------------------------------------------------------

log(2)

log(3)

exp(0)
exp(1)


log( exp(100) )



# vectorized operations ---------------------------------------------------

prices <- c(10, 12, 9)


10 * 1.05
12 * 1.05
9 * 1.05

prices * 1.05
# 10.50  12.60  9.45

prices_after_inflation <- prices * 1.05

prices >= 10
# TRUE  TRUE  FALSE

10 >= 10
12 >= 9
9 >= 10


c(10, 100, 1000) + 1


c(10, 100, 1000) + c(10, 100, 1000)

c(10, 100, 1000) / c(10, 100, 1000)

c(10, 100, 1000) * c(10, 100, 1000)

# [1] 1e+02 1e+04 1e+06
# 100 10000 1000000

