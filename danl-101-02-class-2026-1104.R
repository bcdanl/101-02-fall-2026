library(tidyverse)
library(ggthemes)

flights <- nycflights13::flights

airline_flights <- flights |>
  filter(carrier == "AA" |
           carrier == "DL" |
           carrier == "UA")

airline_flights |> 
  count(carrier)


airport_airline_counts <- airline_flights |> 
  count(origin, carrier)

airline_airport_counts <- airline_flights |> 
  count(carrier, origin)





# stacked bar chart -------------------------------------------------------


ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = origin)) +
  geom_bar() +
  scale_fill_colorblind()


ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = origin)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()



ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()


# legend is necessary:
# show.legend = FALSE is a bad choice
ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()







# side-by-sdie bars

ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()


ggplot(data = flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()



ggplot(data = flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_viridis_d()




# classwork 13 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)

flights <- nycflights13::flights
destination_flights <- flights |>
  filter(month == 1 | month == 7,
         dest == "BOS" | dest == "LAX" | dest == "ORD")


# q1 ----------------------------------------------------------------------


ggplot(data = destination_flights,
       mapping = aes(x = month,
                     fill = dest)) +
  geom_bar() +
  scale_fill_colorblind()



ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar() +
  scale_fill_colorblind()


month_destination_counts <- destination_flights |>
  count(month, dest)



# q2 ----------------------------------------------------------------------

destination_month_counts <- destination_flights |>
  count(dest, month)

ggplot(data = destination_flights,
       mapping = aes(x = dest,
                     fill = factor(month))) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()




# q3 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind() +
  labs(y = "Proportion")
