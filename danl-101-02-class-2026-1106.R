
library(tidyverse)
library(ggthemes)

flights <- nycflights13::flights
destination_flights <- flights |>
  filter(month == 1 | month == 7,
         dest == "BOS" | dest == "LAX" | dest == "ORD")


# q3 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind() +
  labs(y = "Proportion")



# (Proportion of LAX flights in January)
# = (Number of LAX flights in January) / (Number of all flights in January)


month_dest_counts <- destination_flights |> 
  count(month, dest)

1159 / (1245 + 1159 + 1269)



# the proportion of LAX flights in July
# = (Number of LAX flights in July) / (Number of all July flights)
# = 1,500 / (1,378 + 1,500 + 1,573)
# = 0.3370029



# q4 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = dest,
                     fill = factor(month))) +
  geom_bar(position = "fill") +
  scale_fill_colorblind() +
  labs(y = "Proportion")


# For the July section of the LAX bar, 
# give the numerator, denominator, and approximate percentage.

dest_month_counts <- destination_flights |> 
  count(dest, month)


# the proportion of July flights in LAX
# = (Number of July flights in LAX) / (Number of all LAX flights)
# = 1,500 / (1,159 + 1,500)
# = 0.5641219

# 1. “Among the three selected destinations, 
# what share of July records were headed to LAX?” 




# 2. “Of all flight records with LAX as the destination 
# in January and July combined, 
# what percentage were from July?”





# relationships -----------------------------------------------------------


mpg <- mpg



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)"
  )









