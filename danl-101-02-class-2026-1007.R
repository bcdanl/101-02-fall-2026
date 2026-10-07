library(tidyverse)

df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)

df

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )



# distinct() --------------------------------------------------------------

flights <- nycflights13::flights


flights_distinct <- flights |> 
  distinct()


origin_dest <- flights |> 
  distinct(origin, dest) |> 
  arrange(origin, dest)



# classwork 6 -------------------------------------------------------------


library(tidyverse)
flights <- nycflights13::flights
?flights



# question 1 --------------------------------------------------------------

# (a) Find all flights that had an arrival delay of two or more hours.
q1a <- flights |> 
  filter(arr_delay >= 120) |> 
  arrange(arr_delay)



# (b) Find all flights that flew to Houston (IAH or HOU).

q1b <- flights |> 
  filter(dest == "IAH" | dest == "HOU")

# (c) Find all flights that departed in summer (July, August, and September).

q1c_AND <- flights |> 
  filter(month == 7 & month == 8 & month == 9)


q1c_OR <- flights |> 
  filter(month == 7 | month == 8 | month == 9)


# (d) Find all flights that arrived more than two hours late, 
# but did not leave late. 
# An on-time or early departure has a departure delay of zero or less.

q1d <- flights |> 
  filter(arr_delay > 120 , dep_delay <= 0)


q1d_OR <- flights |> 
  filter(arr_delay > 120 | dep_delay <= 0)

# q2 ----------------------------------------------------------------------

# How many flights have a missing dep_time?

flights |> 
  filter( is.na(dep_time) ) |> 
  nrow()

q2 <- flights |> 
  filter( is.na(dep_time) )

nrow(q2)


# q3 ----------------------------------------------------------------------

# Sort flights to find the most delayed flights by departure delay (dep_delay), 
# with the largest delay first.

q3_asce <- flights |> 
  arrange(dep_delay) |> 
  head(5)

q3_desc <- flights |> 
  arrange(desc(dep_delay)) |> 
  head(5)

q3_desc___ <- flights |> 
  arrange(-dep_delay) |> 
  head(5)


# q4 ----------------------------------------------------------------------

# Was there a flight on every day of 2013?




