library(tidyverse)
flights <- nycflights13::flights

# classwork 6
# q4 ----------------------------------------------------------------------

# Was there a flight on every day of 2013?

flight_dates <- flights |> 
  distinct(year, month, day)


number_of_days <- nrow(flight_dates)

number_of_days == 365




# select() ----------------------------------------------------------------

flights |> 
  select(year, month, day)

flights |> 
  select(-year)

# flights |> 
#   select(-year, month, day)


flights |> 
  select(-year, -month, -day)

flights_renamed <- flights |> 
  rename(tail___num = tailnum)


names(flights_renamed)

flights |>
  filter(month == 1, !is.na(dep_delay)) |>
  arrange(desc(dep_delay)) |>
  select(origin, dest, dep_delay) |>
  rename(departure_delay = dep_delay)



# classwork 7 -------------------------------------------------------------

library(tidyverse)
nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2025.csv")


# q1 ----------------------------------------------------------------------
# Fill in the blanks to create a new data.frame, df, 
# that keeps only the following five variables—
  # Fiscal_Year, Agency_Name, First_Name, Last_Name, and Base_Salary
# —from nyc_payroll_new.


df <- nyc_payroll_new |>
  select(Fiscal_Year, Agency_Name, First_Name, Last_Name, Base_Salary)


# q2 ----------------------------------------------------------------------
# Using the df from Question 1, 
# fill in the blank to rename Agency_Name to Agency. 
# Save the updated data.frame back to df.

df <- df |>
  rename(Agency = Agency_Name)

# q3 ----------------------------------------------------------------------

# Using the df from Question 2, 
# fill in the blank to remove Fiscal_Year with select(). 
# Save the updated data.frame back to df.

df <- df |>
  select(- Fiscal_Year)








