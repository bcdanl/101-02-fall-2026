library(tidyverse)
library(ggthemes)
library(skimr)

mpg <- mpg


# smooth curves -----------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth() +  # non-linear relationship between x and y
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )




ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm") +  # linear relationship between x and y
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0) +
  geom_smooth(method = "lm",  # linear relationship between x and y
              se = FALSE) +  
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )





ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = .3) +
  geom_smooth(method = "lm",  # linear relationship between x and y
              se = FALSE) +  
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )




ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = .5) +
  geom_smooth(method = "lm",  # linear relationship between x and y
              se = FALSE) +  
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 1) +
  geom_smooth(method = "lm",  # linear relationship between x and y
              se = FALSE) +  
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )



library(ggthemes)

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = drv)) +
  geom_point(alpha = 0.5) +
  scale_color_tableau() +
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)",
    color = "Drive system"
  )
