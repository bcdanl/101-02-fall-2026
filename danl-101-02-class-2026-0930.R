library(tidyverse)

# Read the CSV file directly from the web (GitHub repo)
custdata <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')


# getting to know data.frame ----------------------------------------------


class(custdata)
dim(custdata)
nrow(custdata)
ncol(custdata)
names(custdata)

summary(custdata)


# install.packages("skimr")
library(skimr)
# skimr::skim()
skim(custdata)

custdata_sum <- skim(custdata)
summary_of_df <- skim(custdata)




# $ operator --------------------------------------------------------------

custdata$age
skim(custdata$age)

skim(custdata$income)











