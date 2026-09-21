bills <- c(23, 45, 12, 67, 89,
           34, 56, 78, 90, 43)

bills_flagged <- c(bills, 10000)

mean(bills)
mean(bills_flagged)

median(bills)
median(bills_flagged)



# mean --------------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
sum(x) / length(x)   # 80
mean(x)               # 80
median(x)

# weighted mean
weighted.mean(c(90, 80), w = c(.40, .60))  # 84
weighted.mean(c(90, 80), w = c(4, 6))  # 84


# can you caluclate this weighted mean without using weighted.mean()?




# median ------------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
median(x)   # 80

y <- c(60, 70, 80, 90, 100, 110)
median(y)


x <- c(60, 70, 80, 90, 100)
x_with_extreme <- c(x, 100000000)

x_with_extreme
mean(x_with_extreme)
median(x_with_extreme)
median(y)



# mode --------------------------------------------------------------------


response <- c("Online", "In person", "Online",
              "Hybrid", "Online")

table(response)


# range -------------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
range(x)                  # 60 100: the endpoints
x_range <- max(x) - min(x) # 40: the width
x_range






