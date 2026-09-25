# Write an R code to calculate the standard deviation (SD) of 
# the integer vector x below manually. 
# That is to calculate the SD without using the sd() or the var() functions.


x <- 1:25

# SD = square root of variance
# Variance = ( sum of ( x_i - mean(x) )^2  ) / (n - 1)
# SD_manually = sd(x)


# sd(x)

x_mean <- mean(x)

# (1 - x_mean)^2 + (2 - x_mean)^2 + (3 - x_mean)^2 + (4 - x_mean)^2 + (5 - x_mean)^2 + (6 - x_mean)^2 + ...


x

# Step 1
# difference between x_i and mean(x)
x - mean(x)

# Step 2
( x - mean(x) )^2


# Step 3
sum( ( x - mean(x) )^2 )


# Step 4
length(x) - 1



# step 5 ------------------------------------------------------------------

x_var <- sum( ( x - mean(x) )^2 ) / (length(x) - 1)



# step 6 ------------------------------------------------------------------


x_sd <- sqrt(x_var)



# step 6 ------------------------------------------------------------------

x_sd == sd(x)




# filtering a vector ------------------------------------------------------

scores <- c(72, 85, 79, 91, 88)

scores[2]
scores[ c(2,5) ] 

scores >= 85
# `72 is greater than or equal to 85` is false

scores[ scores >= 85 ]


my_condition <- scores >= 85
scores[ my_condition ]




my_vector <- c(10, 20, 30, 40, 50, 60)
my_vector[2]   # 20


keep <- my_vector >= 40
keep                       # FALSE FALSE FALSE TRUE TRUE TRUE
my_vector[keep]            # 40 50 60

my_vector[my_vector >= 40] # 40 50 60


# classwork 4 -------------------------------------------------------------



# q1 ----------------------------------------------------------------------

my_vec <- c(-10, -20, 30, 10, 50, 40, -100)


# Write an R code to keep only the positive values in my_vec.
my_vec
my_vec > 0

my_vec[ my_vec > 0 ]




beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")

# Use positional indexing to keep the beer names in positions 2, 4, and 6.

beers[ c(2,4,6) ]



# q2 ----------------------------------------------------------------------

ages <- c(15, 22, 18, 24, 30)


# Create a logical vector logical_vec that checks 
  # whether the elements of the vector `ages <- c(15, 22, 18, 24, 30)` 
  # are greater than or equal to 20.

logical_vec <- ages >= 20

ages
logical_vec


# Use logical_vec inside square brackets 
# to keep only the ages that are greater than or equal to 20.

ages[ logical_vec ]

