library(tidyverse)

mpg <- mpg

mpg |> 
  distinct(drv)


mpg |> 
  distinct(class)


ggplot(data = mpg,
       mapping = aes(x = class)) +
  geom_bar()


ggplot(data = mpg,
       mapping = aes(y = class)) +
  geom_bar()



ggplot(data = mpg,
       mapping = aes(y = class,
                     fill = class)) +
  geom_bar()



ggplot(data = mpg,
       mapping = aes(y = class,
                     fill = class)) +
  geom_bar() +
  ggthemes::scale_fill_colorblind()


ggplot(data = mpg,
       mapping = aes(y = class,
                     fill = class)) +
  geom_bar(show.legend = FALSE) +
  ggthemes::scale_fill_colorblind()



ggplot(data = mpg,
       mapping = aes(y = class,
                     fill = class)) +
  geom_bar(show.legend = FALSE) +
  ggthemes::scale_fill_colorblind() +
  labs(x = "Nunmber of vehicles",
       y = "Vehicle class")




# count() -----------------------------------------------------------------


class_counts <- mpg |> 
  count(class)


ggplot(data = class_counts,
       mapping = aes(y = class)) +
  geom_bar()


# error
ggplot(data = class_counts,
       mapping = aes(y = class,
                     x = n)) +
  geom_bar()




# geom_col() requires both x and y aesthetic mappings
ggplot(data = class_counts,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()


# error:
ggplot(data = class_counts,
       mapping = aes(y = class)) +
  geom_col()


ggplot(data = class_counts,
       mapping = aes(x = class)) +
  geom_col()



ggplot(data = class_counts,
       mapping = aes(x = n,
                     y = class)) +
  geom_col()

ggplot(data = class_counts,
       mapping = aes(x = n,
                     y = fct_reorder(class, n))) +
  geom_col()



# classwork 12 ------------------------------------------------------------

library(ggthemes)
ggplot(data = mpg,
       mapping = aes(y = fl,
                     fill = fl)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()



fuel_counts <- mpg |>
  count(fl)

ggplot(data = fuel_counts,
       mapping = aes(y = fl,
                     fill = fl,
                     x = n)
       ) +
  geom_col(show.legend = FALSE) +
  scale_fill_colorblind()

ggplot(data = fuel_counts,
       mapping = aes(x = n,
                     y = fct_reorder(fl, n),
                     fill = fl)) +
  geom_col(show.legend = FALSE) +
  scale_fill_colorblind()


drv_counts <- mpg |>
  count(drv)


ggplot(data = drv_counts,
       mapping = aes(y = drv, x = n)) +
  geom_col()

ggplot(data = drv_counts,
       mapping = aes(y = fct_reorder(drv, n), 
                     x = n)) +
  geom_col()
