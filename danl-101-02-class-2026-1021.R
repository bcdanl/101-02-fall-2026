library(tidyverse)
mpg <- ggplot2::mpg

?mpg

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram()



ggplot(data = mpg,
       mapping = aes(x = cty))

ggplot(data = mpg)
