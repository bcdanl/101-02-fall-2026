library(tidyverse)
library(ggthemes)
mpg <- mpg

ggplot(data = mpg,
       mapping = aes(x = displ,
                      y = hwy,
                      color = drv)) +
  geom_point(alpha = .5) +
  geom_smooth() +
  scale_color_colorblind() +
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)",
    color = "Drive system"
  )




# shape -------------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = drv,
                     shape = drv)) +
  geom_point(alpha = .5,
             size = 2.5) +
  geom_smooth() +
  scale_color_colorblind() +
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)",
    color = "Drive system",
    shape = "Drive system"
  )



# linetype ----------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(shape = drv,
                     color = drv,
                     fill = drv,
                     linetype = drv,
                     x = displ,
                     y = hwy)) +
  geom_point(alpha = .5) +
  geom_smooth() +
  scale_color_tableau() +
  scale_fill_tableau() +
  labs(x = "Engine size (liters)",
       y = "Highway fuel economy (mpg)",
       color = "Drive system",
       fill = "Drive system",
       shape = "Drive system",
       linetype = "Drive system")




# aes() vs. setting color/fill manually -----------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(color = "orange", 
             alpha = 0.5)



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(color = "steelblue", 
             alpha = 0.5)



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(color = "steelblue", 
             alpha = 0.5)



# do not make this mistake
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = "steelblue")) +
  geom_point(alpha = 0.5)



# classwork 14 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)

custdata <- read_csv("https://bcdanl.github.io/data/custdata_rev.csv")
ny_customers <- custdata |>
  filter(state_of_res == "New York", 
         income > 10000, income < 250000, 
         age >= 25,
         housing_type == "Rented" | 
           housing_type == "Homeowner with mortgage/loan" |
           housing_type == "Homeowner free and clear")



# q1 ----------------------------------------------------------------------

# age on the horizontal axis and 
# recorded income on the vertical axis
ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2)


# Describe the overall shape or direction, and 
# identify variation among customers of the same age. 
# Where do the darker areas show the most overlap? Point out one unusual or extreme observation worth investigating, without assuming it is an error. State the units on both axes.


ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth()



# bad example b/c overplotting issue:
ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point() +
  geom_smooth()





# q2 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth()

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm")

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm", 
              se = FALSE)



# q3 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type)) +
  geom_point(alpha = .3, size = 2) +
  scale_color_tableau()


ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type)) +
  geom_point(alpha = .3, size = 2) +
  geom_smooth() + 
  scale_color_tableau()

