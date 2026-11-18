
# dist of a numeric var.
  # histogram
  # boxplot

# dist. of a categorical var.
  # bar charts


# relationship between two numeric vars
  # scatterplot with fitted curves

# time trend of a numeric var
  # line chart (with geom_point / geom_smooth)

# color / facet
# to see how dist/relationship/time trend varies across groups.

# for bar chart
  # fill and position or facet
    # stacked bars
    # side-by-side bars
    # 100% stacked bars
# to see how dist varies across groups.



# classwork 16 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)

tech_october <- read_csv("https://bcdanl.github.io/data/tech_stocks_2026_10.csv") |>
  filter(Ticker == "MSFT" | Ticker == "META" )



# q1 ----------------------------------------------------------------------

microsoft_october <- tech_october |>
  filter(Ticker == "MSFT")

ggplot(data = microsoft_october,
       mapping = aes(x = Date,
                     y = Volume)) +
  geom_line(color = "grey60") +
  geom_point(color = "steelblue")



ggplot(data = microsoft_october,
       mapping = aes(x = Date,
                     y = Volume)) +
  geom_line(color = "grey60") +
  geom_point(color = "steelblue") +
  geom_smooth()


ggplot(data = microsoft_october,
       mapping = aes(x = Date,
                     y = Volume)) +
  geom_point(color = "steelblue")


ggplot(data = tech_october,
       mapping = aes(x = Date,
                     y = Volume,
                     color = Ticker,
                     linetype = Ticker)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  scale_color_colorblind()



ggplot(data = tech_october,
       mapping = aes(x = Date,
                     y = Volume)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2)


