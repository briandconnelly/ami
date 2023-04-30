
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ami

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/briandconnelly/ami/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/briandconnelly/ami/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/briandconnelly/ami/branch/main/graph/badge.svg)](https://app.codecov.io/gh/briandconnelly/ami?branch=main)
<!-- badges: end -->

ami is a collection of lightweight functions that can be used to
determine the computing environment in which your code is running. This
includes Continuous Integration (CI) environments, containers, different
operating systems, and more.

Similar or identical functions already exist. However, most of these
functions exist within highly specialized packages, so using several of
them can quickly create a lot of dependencies for your own projects. The
goal of ami is to provide a unified collection of checks that can be
used to better understand the environments in which your code is
running.

## Installation

If you’d like to try out the development version of ami, you can install
directly from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("briandconnelly/ami")
```

## Some Examples

### Am I online?

``` r
ami::online()
#> [1] TRUE
```

*Alternatives:*
[`curl::has_internet()`](https://jeroen.cran.dev/curl/reference/nslookup.html)
(used by ami),
[`testthat::skip_if_offline()`](https://testthat.r-lib.org/reference/skip.html),
[`pingr::is_online()`](https://github.com/r-lib/pingr)

### Am I using RStudio?

``` r
ami::using_rstudio()
#> [1] FALSE
```

*Alternatives:*
[`rstudioapi::isAvailable()`](https://rstudio.github.io/rstudioapi/reference/isAvailable.html)

### Am I using macOS? On an Intel Mac?

``` r
ami::using_macos()
#> [1] TRUE
```

``` r
ami::using_macos() && ami::using_x86_cpu()
#> [1] FALSE
```

### Are we running in a Docker container?

``` r
ami::using_docker_container()
#> [1] FALSE
```

### Are we using a continuous integration service? GitHub Actions?

``` r
ami::using_ci()
#> [1] FALSE

ami::using_github_actions()
#> [1] FALSE
```

*Alternatives:*
[`testthat::skip_on_ci()`](https://testthat.r-lib.org/reference/skip.html)
(and `on_ci()`),
[`testthat::skip_on_travis()`](https://testthat.r-lib.org/reference/skip.html),
[`testthat::skip_on_appveyor()`](https://testthat.r-lib.org/reference/skip.html)

### Other environments

ami can be used to check any environment variable. For example, we can
see if we’re running in a [Poetry](https://python-poetry.org)
environment:

``` r
ami::using_envvar("POETRY_ACTIVE")
#> [1] FALSE
```

We can also check for package options. Here, we’ll see whether
[boot](https://cran.r-project.org/package=boot) is configured to do
parallel bootstrapping using multiple cores:

``` r
ami::using_option("boot.parallel", "multicore")
#> [1] FALSE
```

If you’re using options as part of package development, check out the
[options](https://cran.r-project.org/package=options) package.
