
<!-- README.md is generated from README.Rmd. Please edit that file -->

# VictoR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/VictoR)](https://CRAN.R-project.org/package=VictoR)
[![R-CMD-check](https://github.com/vcastro/VictoR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/vcastro/VictoR/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/vcastro/VictoR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/vcastro/VictoR?branch=main)
<!-- badges: end -->

The goal of VictoR is to provide often-used functions for data
manipulation, annotation, and visualization.

## Installation

You can install the development version of VictoR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("vcastro/VictoR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(VictoR)

# label columns in a dataframe
df <- data.frame(a = c(1,2,3), b=c(4,5,6), c=c(7,8,9))
labels <- list(a = "col 1", b = "col 2", c = "col 3")
new_df <- label_data(df, labels)
str(new_df)
#> 'data.frame':    3 obs. of  3 variables:
#>  $ a: num  1 2 3
#>   ..- attr(*, "label")= chr "col 1"
#>  $ b: num  4 5 6
#>   ..- attr(*, "label")= chr "col 2"
#>  $ c: num  7 8 9
#>   ..- attr(*, "label")= chr "col 3"
```
