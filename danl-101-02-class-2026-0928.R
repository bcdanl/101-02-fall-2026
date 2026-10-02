# install.packages("tidyverse")

library(tidyverse)

# (absolute) pathname of the working directory
getwd()
# /cloud/project/

library(tidyverse)
# absolute pathname of the CSV file, custdata_rev.csv
df <- read_csv("/cloud/project/data/custdata_rev.csv")

# relative pathname of the CSV file, custdata_rev.csv
custdata <- read_csv("data/custdata_rev.csv")

# Read the CSV file directly from the web (GitHub repo)
custdata_web <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')

