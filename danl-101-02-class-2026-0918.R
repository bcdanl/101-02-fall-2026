
# common log --------------------------------------------------------------


log10(100)




# colon operator : ----------------------------------------------------------

1:4
# c(1,2,3,4)
c(1L,2L,3L,4L)




# Classwork 2 -------------------------------------------------------------


# Q1
state.name


US_states <- state.name

# R is case-sensitive
us_states


# Q2
# numbers <- c(10,11,12,13,14,15,16, .... , 50)

numbers <- 10:50
numbers


# Q3
temp_F <- c(35, 88, 42, 84, 81, 30)

temp_F - 32

temp_C <- 5 / 9 * (temp_F - 32)
temp_C


# 5 / 9 * (35 - 32)
# 5 / 9 * (88 - 32)
# ...


# Q4
greeting <- "Hello, World!"
greeting


# Q5
char_vec <- c("1", "2", "3", "4")
char_vec

as.numeric( char_vec )

num_vec <- as.numeric( char_vec )


# Q6
library(stringr)
first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

full_names <- str_c(first_names, last_names)
full_names
full_names <- str_c(first_names, last_names, sep = " ")
full_names





