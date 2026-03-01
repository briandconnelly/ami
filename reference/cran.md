# Detect CRAN

This function detects whether the current R environment is a CRAN
machine or not. It returns `FALSE` if the `NOT_CRAN` environment
variable used in "github/r-lib" packages like devtools and testthat is
set to "true". If that variable is not set, the function examines other
environment variables typically set on CRAN machines, as documented in
the issue on this packages' GitHub repository at
<https://github.com/briandconnelly/ami/issues/14>.

## Usage

``` r
on_cran(cran_pattern = "_R_", n_cran_envvars = 5L)
```

## Arguments

- cran_pattern:

  String to match against environment variables.

- n_cran_envvars:

  If at least this number of environment variables match the
  `cran_pattern`, `on_cran()` returns `TRUE`.

## Value

A logical value

## Examples

``` r
on_cran()
#> [1] FALSE
withr::with_envvar(
  list("NOT_CRAN" = "false", "_R_1" = 1, "_R_2" = 2),
  on_cran(n_cran_envvars = 2L)
)
#> [1] TRUE
```
