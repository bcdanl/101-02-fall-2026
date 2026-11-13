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



# q3 review ---------------------------------------------------------------


ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type)) +
  geom_point(alpha = .3, size = 2) +
  geom_smooth(mapping = aes(fill = housing_type,
                            linetype = housing_type)
              ) +
  scale_color_tableau() +
  scale_fill_tableau()







# q4 ----------------------------------------------------------------------


ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(shape = 4,
             alpha = .2,
             color = "steelblue")




# q5 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.3) +
  geom_smooth() +
  facet_wrap(~ housing_type)





# log transformation ------------------------------------------------------

gapminder_2007 <- read_csv(
  "https://bcdanl.github.io/data/gapminder.csv"
) |>
  filter(year == 2007)


