# install.packages("nycflights13")

library(nycflights13)
library(tidyverse) # tidyverse include dplyr package

flights <- nycflights13::flights

?flights

# descriptive stat for year
skimr::skim(flights$year)

# create a data frame that contains flights that departed in
# January or December 

# january flights
jan <- flights |> 
  filter(month == 1)

# december flights
dec <- flights |> 
  filter(month == 12)

# January or December flights
jan_dec <- flights |> 
  filter( month == 1 | month == 12)

nrow(jan) + nrow(dec) == nrow(jan_dec)


# Flights on January 1
jan_1 <- flights |> filter(month == 1, day == 1)



# missing values ----------------------------------------------------------

num_missing <- NA
is.na(num_missing)  # is num_missing NA?


text_missing <- "missing"
is.na(text_missing) # is text_missing NA?



V1 <- c(1, NA, 3)
is.na(V1)  # is V1 NA?
!is.na(V1)  # is V1 not NA?


df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )



# arrange() ---------------------------------------------------------------

flights |> 
  arrange(dep_delay)

# Sort by dep_delay, 
# then by sched_dep_time
flights |> 
  arrange(dep_delay, sched_dep_time)

flights |> 
  arrange( desc(dep_delay) )

flights |> 
  arrange( -dep_delay )

flights |> 
  arrange( -tailnum )

flights |> 
  arrange( desc(tailnum) )



# distinct() --------------------------------------------------------------

df <- data.frame(
  country = c("USA", "Korea", "USA"),
  city = c("D.C.", "Seoul", "D.C."),
  subregion = c("Georgetown", 
                "Gangnam", 
                "Georgetown") 
)

df |> 
  distinct()


# Find all unique 
#  origin-destination pairs
flights |> 
  distinct(origin, dest)

