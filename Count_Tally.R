###pacpackage ‘dplyr'

install.packages("dplyr")
library(dplyr)



###Count/tally observations by group
##Data set use:mtcars

View(mtcars)
tally(mtcars)
mtcars %>% tally()
mtcars %>% tally(cyl)
mtcars %>% count(cyl)

mtcars %>% add_tally()
# add_count() is a short-hand for group_by() + add_tally()
mtcars %>% add_count(cyl)


species <- starwars %>% count(species, homeworld, sort = TRUE)
species
species %>% count(species, sort = TRUE)

# add_count() is useful for groupwise filtering

starwars %>%
  add_count(species) %>%
  filter(n == 1)
