library(tidyverse)

data_url <- 
  "https://www.countyhealthrankings.org/sites/default/files/media/document/analytic_data2022.csv"

chr_2022_raw <- read_csv(data_url, skip = 1, guess_max = 4000,
                         show_col_types = FALSE) |> 
  filter(county_ranked == 1)

chr_2022_raw |> filter(state %in% c("OH", "AZ", "CA", "NY")) |> nrow()
