## ------------------------------------------------------------------------
library(gameday)

## ------------------------------------------------------------------------
# Checks whether the Canucks play today
gday()

# Checks whether the Bruins play tomorrow
gday("bruins", Sys.Date() + 1)

## ------------------------------------------------------------------------
# Lookup final scores on Remembrance Day
scores("2014-11-11")

## ------------------------------------------------------------------------
suppressPackageStartupMessages(library(dplyr))

# All winning teams on a particular date
score_data <- scores("2014-11-11")
score_data %>%
	mutate(winner = ifelse(home_score > away_score, as.character(home), as.character(away))) %>%
	select(winner)

