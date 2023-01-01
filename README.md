
<!-- README.md is generated from README.Rmd. Please edit that file -->

# checkenv

<!-- badges: start -->

[![R-CMD-check](https://github.com/briandconnelly/checkenv/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/briandconnelly/checkenv/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/briandconnelly/checkenv/branch/main/graph/badge.svg)](https://app.codecov.io/gh/briandconnelly/checkenv?branch=main)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

checkenv is a collection of lightweight functions that can be used to
determine the computing environment in which your code is running. This
includes Continuous Integration (CI) environments, containers, different
operating systems, and more.

Similar or identical functions already exist. However, most of these
functions exist within highly specialized packages, so using several of
them can quickly create a lot of dependencies for your own projects. The
goal of checkenv is to provide a unified collection of checks that can
be used to better understand the environments in which your code is
running.

## Installation

If you’d like to try out the development version of checkenv, you can
install directly from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("briandconnelly/checkenv")
```

## Some Examples

### Am I online?

``` r
library(checkenv)

is_online()
#> [1] TRUE
```

*Alternatives:*
[`curl::has_internet()`](https://jeroen.cran.dev/curl/reference/nslookup.html)
(used by checkenv),
[`testthat::skip_if_offline()`](https://testthat.r-lib.org/reference/skip.html),
[`pingr::is_online()`](https://github.com/r-lib/pingr)

### Am I using RStudio?

``` r
using_rstudio()
#> [1] FALSE
```

*Alternatives:*
[`rstudioapi::isAvailable()`](https://rstudio.github.io/rstudioapi/reference/isAvailable.html)

### Am I using macOS? On an Intel Mac?

``` r
using_macos()
#> [1] TRUE
```

``` r
using_macos() && using_x86_cpu()
#> [1] FALSE
```

### Are we running in a Docker container?

``` r
using_docker_container()
#> [1] FALSE
```

### Are we using a continuous integration service? GitHub Actions?

``` r
using_ci()
#> [1] FALSE

using_github_actions()
#> [1] FALSE
```

*Alternatives:*
[`testthat::skip_on_ci()`](https://testthat.r-lib.org/reference/skip.html)
(and `on_ci()`),
[`testthat::skip_on_travis()`](https://testthat.r-lib.org/reference/skip.html),
[`testthat::skip_on_appveyor()`](https://testthat.r-lib.org/reference/skip.html)
