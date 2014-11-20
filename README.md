gameday
=======

A package that allows the user to extract data on NHL teams without using the browser. The RStudio interface is simple and intuitive to use.

### Installation
Install `gameday` from GitHub:


```r
devtools::install_github("dchiu911/gameday")
```
_Note that you need the `devtools` package to do this._

### Usage
At the current version, `gameday` has two functions: `gday()` and `scores()`. We'll discuss each in turn.

Given a team and a date, we can call `gday(team, date)` to see whether that team plays on that date.


```r
library(gameday)

gday("devils", "2014-11-03")
```

```
## [1] FALSE
```

What if we wanted to find all the final scores on a particular date? Then we can call `scores(date)` to return a `data.frame` with this information.


```r
scores("2014-11-15")
```

```
##                     home                   away home_score away_score
## 1          BOSTON BRUINS    CAROLINA HURRICANES          2          1
## 2           DALLAS STARS         MINNESOTA WILD          1          2
## 3      LOS ANGELES KINGS          ANAHEIM DUCKS          3          2
## 4         BUFFALO SABRES    TORONTO MAPLE LEAFS          6          2
## 5     MONTREAL CANADIENS    PHILADELPHIA FLYERS          6          3
## 6    TAMPA BAY LIGHTNING NY ISLANDERS ISLANDERS          5          2
## 7      NEW JERSEY DEVILS     COLORADO AVALANCHE          2          3
## 8    PITTSBURGH PENGUINS     NY RANGERS RANGERS          3          2
## 9  COLUMBUS BLUE JACKETS        SAN JOSE SHARKS          2          1
## 10   NASHVILLE PREDATORS          WINNIPEG JETS          2          1
## 11        ST LOUIS BLUES    WASHINGTON CAPITALS          4          1
## 12        CALGARY FLAMES        OTTAWA SENATORS          4          2
```

### Vignette
Further details can be found in the vignette for this package. To view it, run this command in the R console:


```r
browseVignettes("gameday")
```

Once there, you can click on the `HTML` link to get a nice introduction to `gameday`. The help files can be accessed with `?gday` and `?scores` for details on function arguments and some examples.

Alternatively, there is a markdown version available in this repository, found [here](https://github.com/dchiu911/gameday/blob/master/vignettes/overview.md).
