
# variance/sd ----------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
var(x)
sd(x)

y <- c(10, 20, 30)
var(y)
sd(y)


z <- c(15, 30, 45, 60, 75)
mean(z)
var(z)
sd(z)


# quartile/IQR ----------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)

quantile(x, c(.25, .5, .75))

quantile(x, c(0, .25, .5, .75, 1))

IQR(x)



# classwork ---------------------------------------------------------------


# Q1 SD/variance without sd()/var() ----------------------------------------------------------------------
# mean() is allowed to use for this question


x <- 1:25
mean(x)
# step 1
x - mean(x)

# step 2

( x - mean(x) )^2

# step 3

sum( ( x - mean(x) )^2 )



# step 4
sum( ( x - mean(x) )^2 ) / (length((x) - 1) )

var(x)


# Q2 range ----------------------------------------------------------------------

temp <- c(22, 28, 31, 25, 29)

temp_range <- max(temp) - min(temp)


# Q3 quartile ----------------------------------------------------------------------
scores <- c(12, 7, 15, 10, 20, 18, 5, 14)


scores_quartile <- quantile(scores, c(0.25, 0.5, 0.75))
scores_quartile

scores_IQR <- IQR(scores)

