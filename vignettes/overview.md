Motivation
----------

The `gameday` package provides a convenient way to extract simple
information on NHL teams without using your internet browser. Sometimes
we get distracted by extraneous information on the web and our attention
is diverted. Using the functions in `gameday` can prevent this from
happening!

Usage
-----

First we need to load the package.

    library(gameday)

### gday(team, date)

We can use this to check whether a specified team plays on a specified
date. For example, a simple usage of this:

    # Checks whether the Canucks play today
    gday()

    ## [1] TRUE

    # Checks whether the Bruins play tomorrow
    gday("bruins", Sys.Date() + 1)

    ## [1] TRUE

### scores(date)

We use this to lookup all the final scores on a particular date. For
instance, the `data.frame` output for the games on Remembrance Day are:

    # Lookup final scores on Remembrance Day
    scores("2014-11-11")

    ##                      home                  away home_score away_score
    ## 1       NEW JERSEY DEVILS        MINNESOTA WILD          3          1
    ## 2  NY ISLANDERS ISLANDERS    COLORADO AVALANCHE          6          0
    ## 3      NY RANGERS RANGERS   PITTSBURGH PENGUINS          5          0
    ## 4     WASHINGTON CAPITALS COLUMBUS BLUE JACKETS          4          2
    ## 5      MONTREAL CANADIENS         WINNIPEG JETS          3          0
    ## 6        FLORIDA PANTHERS       SAN JOSE SHARKS          4          1
    ## 7          ST LOUIS BLUES        BUFFALO SABRES          6          1
    ## 8     NASHVILLE PREDATORS       EDMONTON OILERS          3          2
    ## 9      CHICAGO BLACKHAWKS   TAMPA BAY LIGHTNING          3          2
    ## 10        ARIZONA COYOTES          DALLAS STARS          3          4
    ## 11      VANCOUVER CANUCKS       OTTAWA SENATORS          4          3

There is more functionality we can utilize with `scores()`. We can look
up all the winning teams of a certain hockey date. For this we'll employ
`dplyr`.

    suppressPackageStartupMessages(library(dplyr))

    # All winning teams on a particular date
    score_data <- scores("2014-11-11")
    score_data %>%
        mutate(winner = ifelse(home_score > away_score, as.character(home), as.character(away))) %>%
        select(winner)

    ##                    winner
    ## 1       NEW JERSEY DEVILS
    ## 2  NY ISLANDERS ISLANDERS
    ## 3      NY RANGERS RANGERS
    ## 4     WASHINGTON CAPITALS
    ## 5      MONTREAL CANADIENS
    ## 6        FLORIDA PANTHERS
    ## 7          ST LOUIS BLUES
    ## 8     NASHVILLE PREDATORS
    ## 9      CHICAGO BLACKHAWKS
    ## 10           DALLAS STARS
    ## 11      VANCOUVER CANUCKS

Comparing the winners with the raw `score_data`, we see that indeed only
the winning teams are shown.
