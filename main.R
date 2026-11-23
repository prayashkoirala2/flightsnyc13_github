library(tidyverse)
library(nycflights13)

flight_delays <- flights |>
  filter(month == 5) |>
  group_by(origin) |>
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE))

flight_delays
