library(tidyverse)
mpg <- mpg

# histogram

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram()
  


ggplot(data = mpg,
       mapping = aes(x = cty))

ggplot(data = mpg)

ggplot()


# + -----------------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram() +
  labs(x = "City MPG",
       y = "Number of vehicles")



# x <- "abc



ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    fill = "red",
    color = "blue"
  )



# classwork 10 ------------------------------------------------------------



# 1. Make two histograms




