
# classwork 15 ------------------------------------------------------------


library(tidyverse)

custdata <- read_csv("https://bcdanl.github.io/data/custdata_rev.csv")
ny_customers <- custdata |>
  filter(state_of_res == "New York",
         income > 10000, income < 250000,
         age >= 25,
         housing_type == "Rented" |
         housing_type == "Homeowner with mortgage/loan" |
         housing_type == "Homeowner free and clear")



# q1 ----------------------------------------------------------------------

# What does one bar count in each histogram? 

# Compare where most of the records fall 
# and which tail is longer in each plot.

# histogram of `income`:
ggplot(data = ny_customers,
       mapping = aes(x = income)) +
  geom_histogram(fill = "steelblue", color = "white")


# histogram of the base-10 log of `income`:
ggplot(data = ny_customers,
       mapping = aes(x = log10(income))) +
  geom_histogram(fill = "steelblue", color = "white")





# q2 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(color = "steelblue", 
              fill = "steelblue") +
  geom_smooth(method = "lm", 
              color = "orange", 
              fill = "orange",
              linetype = "dashed")

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = log10(income))) +
  geom_point(alpha = 0.2) +
  geom_smooth(color = "steelblue", 
              fill = "steelblue") +
  geom_smooth(method = "lm", 
              color = "orange", 
              fill = "orange",
              linetype = "dashed")



# time trend --------------------------------------------------------------

tech_october <- read_csv(
  "https://bcdanl.github.io/data/tech_stocks_2026_10.csv"
) 

tech_two <- tech_october |>
  filter(Ticker == "AAPL" | Ticker == "NVDA")

apple_october <- tech_two |>
  filter(Ticker == "AAPL")

msft_october <- tech_october |>
  filter(Ticker == "MSFT")

msft_2026 <- read_csv(
  "https://bcdanl.github.io/data/msft_2026.csv"
)



ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )




ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  # geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )



ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "steelblue") +
  # geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )




ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )


ggplot(data = msft_2026,
       mapping = aes(
         x = Date,
         y = AdjustedClose)) +
  geom_line(color = "grey70") +
  geom_point(
    color = "steelblue", 
    size = 0.6) +
  geom_smooth() +
  labs(x = "Date in 2026",
       y = "Adjusted close ($/share)")




ggplot(data = msft_2026,
       mapping = aes(
         x = Date,
         y = AdjustedClose)) +
  geom_line(color = "grey70") +
  geom_point(
    color = "steelblue", 
    size = 0.6) +
  # geom_smooth() +
  labs(x = "Date in 2026",
       y = "Adjusted close ($/share)")



# Incorrect grouping
ggplot(data = tech_two,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_point(color = "steelblue") +
  geom_line(color = "grey60") +
  labs(
    x = "Date",
    y = "Closing price (US$/share)"
  )
