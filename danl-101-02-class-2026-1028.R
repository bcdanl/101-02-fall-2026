library(tidyverse)

# single boxplot
ggplot(data = mpg,
       mapping = aes(y = cty)) +
  geom_boxplot() 


ggplot(data = mpg,
       mapping = aes(y = cty,
                     x = drv)) +
  geom_boxplot() 



ggplot(data = mpg,
       mapping = aes(y = cty,
                     x = drv,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE) +
  ggthemes::scale_fill_tableau()



library(ggthemes)
ggplot(data = mpg,
       mapping = aes(y = cty,
                     x = drv,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau() +
  labs(x = "Drive system",
       y = "City MPG")



# classwork 11 ------------------------------------------------------------


# q1 ----------------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ drv)



ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ drv, scales = "free_x")


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ drv, scales = "free")


mpg <- mpg

nrow(mpg)

mpg |> filter(drv == 4) |> nrow()
mpg |> filter(drv == "f") |> nrow()
mpg |> filter(drv == "r") |> nrow()

# 10/ 25


# histogram
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2,
                 color = "white",
                 fill = "steelblue") +
  facet_wrap(~ drv)

# boxplot
ggplot(data = mpg,
       mapping = aes(y = cty,
                     x = drv,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE)  +
  scale_fill_tableau()



# bar chart for distribution of categorical var ---------------------------


mpg |> 
  distinct(class)


ggplot(data = mpg,
       mapping = aes(y = class)) +
  geom_bar()






