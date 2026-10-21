library(tidyverse)

# gg in ggplot means "grammar of graphics"
mpg <- ggplot2::mpg

?mpg

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram()



ggplot(data = mpg,
       mapping = aes(x = cty))

ggplot(data = mpg)
