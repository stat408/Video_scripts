library(dplyr)
Seattle <- read_csv('http://math.montana.edu/ahoegh/teaching/stat408/datasets/SeattleHousing.csv')


### Row Operations
Seattle |>
  filter(bathrooms == 1) |>
  arrange(price) |>
  slice(c(1, 2, 3, 4, 5))

filter()
slice()

### Column Operations
Seattle_zipcodes <- Seattle |>
  mutate(zipcode_factor = factor(zipcode)) |>
  select(-zipcode)

### Group by
Seattle_zipcodes |>
  group_by(zipcode_factor) |>
  summarize(ave_price = mean(price), num_houses = n()) |>
  arrange(ave_price)

group_by()
summarize()
tally()



### Joins

bind_rows()
bind_cols()
join()