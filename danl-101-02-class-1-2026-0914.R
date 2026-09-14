

3 < -2
3 < 5

3 < 3
3 <= 3

2
2L


class(2)
class(2L)
class("Geneseo")
class(TRUE)
class(FALSE)




# vectors -----------------------------------------------------------------

# c()

scores <- c(82, 59, 76)
regions <- c("North", "South", "West")

regions

mixed <- c("3", 4, 5)
mixed__ <- c(FALSE, 4, 5)
mixed____ <- c(TRUE, 4, 5)

length(scores)     # 3
length(100)
length("ABC")

class(mixed)       # "character"

class( c(TRUE, TRUE, FALSE) )



# factors -----------------------------------------------------------------
chr_vec <- c("New", "Returning", "New")
class( chr_vec )

status <- factor( chr_vec )
status

levels(status)     # "New" "Returning"
nlevels(status)    # 2


# data type conversion ----------------------------------------------------

price_text <- "4.39"
price <- as.numeric(price_text)

class(price_text)  # "character"
class(price)       # "numeric"


as.integer(4.39)
as.integer(4.99)
as.character(100)
as.character(TRUE)

as.logical(0)
as.logical(1)



# + notation in R console -------------------------------------------------
# greeting <- "hello



# functions ---------------------------------------------------------------

# input: c(60, 70, 80)
# function: mean()
# output: 70

mean( c(60, 70, 80) )




