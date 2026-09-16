# This is comment on the first line of code, `a <- 1`, a is assigned 1
a <- 1
b <- 2  # b gets 2


install.packages("tidyverse")

# install.packages("readr")
# install.packages("dplyr")
# install.packages("ggplot2")
#  ......
#  ......
#  ......
#  ......
#  ......

# Below installs the collection of R packages, tidyverse
# install.packages("tidyverse")
# 

library(tidyverse)
mpg

df_mpg <- mpg

ggplot2::mpg


df <- read_csv("https://bcdanl.github.io/data/spotify_all.csv")



# shortcuts ---------------------------------------------------------------





# auto completion ---------------------------------------------------------

library()



# values & data types ------------------------------------------------------------------

1
"Geneseo"
FALSE
TRUE



# variable ----------------------------------------------------------------


a <- 1
b <- 2



# assignment --------------------------------------------------------------

x <- 2

x < - 3

2 < -3



x <- 2
y <- x + 12


# = is also an assignment operator, just like <-
z = 10
z = z + 12



# data types --------------------------------------------------------------

class(2)
class(2L)

class("2")


# character ---------------------------------------------------------------

class('abcdefg')




# numeric -----------------------------------------------------------------

class(2)       # "numeric"
class(8.8)     # "numeric"
class(2L)      # "integer"



# logical -----------------------------------------------------------------

score <- 8.8

score == 8.8       # TRUE

score == 9.9       # FALSE

class( score == 8.8 ) # "logical"

my_logical <- score == 8.8

class(my_logical)
