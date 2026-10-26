

# classwork 10 ------------------------------------------------------------

library(tidyverse)

mpg <- mpg
# 1. Make two histograms

# bin width of 1 mpg
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 1,
                 color = "white",
                 fill = "steelblue")

# bin width of 5 mpg

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 5,
                 color = "white",
                 fill = "steelblue")





# Don't do this.
ggplot(data = mpg,
       mapping = aes(y = cty)) +
  geom_histogram(binwidth = 5,
                 color = "white",
                 fill = "steelblue")




ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 20,
                 color = "white",
                 fill = "steelblue")



# facet -------------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(color = "white",
                 fill = "steelblue",
                 binwidth = 2) +
  facet_wrap(~ drv)




ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(color = "white",
                 fill = "steelblue",
                 binwidth = 2) +
  facet_wrap(~ drv,
             scales = "free_x")



# colorblind-friendly color palettes --------------------------------------

# install.packages("ggthemes")  # Install once
library(ggthemes)            # Load in each R session



ggplot(data = mpg,
       mapping = aes(x = cty, fill = drv)) +
  geom_histogram(binwidth = 2, color = "white",
                 show.legend = FALSE) + 
  facet_wrap(~ drv)



ggplot(data = mpg,
       mapping = aes(x = cty, fill = drv)) +
  geom_histogram(binwidth = 2, color = "white",
                 show.legend = FALSE) +  # Hide the legend (color key)
  facet_wrap(~ drv) +
  scale_fill_colorblind()   # Use a colorblind-friendly color palette for fills



ggplot(data = mpg,
       mapping = aes(x = cty, fill = drv)) +
  geom_histogram(binwidth = 2, color = "white",
                 show.legend = FALSE) +  # Hide the legend (color key)
  facet_wrap(~ drv) +
  scale_fill_tableau()   # Use a colorblind-friendly color palette for fills



