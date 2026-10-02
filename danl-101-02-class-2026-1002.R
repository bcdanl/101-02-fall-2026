library(tidyverse)

# pipe --------------------------------------------------------------------


# Read the CSV file directly from the web (GitHub repo)
custdata <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')

# keep only Female rows
filter(custdata, sex == "Female")

custdata |> filter(sex == "Female")


custdata |> 
  filter(sex == "Female") |> 
  arrange(income)


nrow(custdata)
custdata |> nrow()


# filter() ----------------------------------------------------------------

df <- data.frame(
  num = c(8, 9, 10, 11),
  chr = c("A", "C", "B", "A")
)


df |> 
  filter(num > 8)
df |> 
  filter(chr == "A")
  



# logical operator --------------------------------------------------------

TRUE & FALSE
TRUE & TRUE

TRUE | FALSE
FALSE | FALSE

TRUE | TRUE

!TRUE
!FALSE


