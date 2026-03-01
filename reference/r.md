# R session information

Get information about the R environment being used.

`using_r_version()` determines whether or not a particular version of R
is being used.

`using_latest_r_version()` determines whether or not the latest stable
version of R is being used.

`using_interactive_session()` determines whether or not R is being run
interactively.

## Usage

``` r
using_r_version(ver)

using_latest_r_version()

using_interactive_session()
```

## Arguments

- ver:

  Version string or character vector of version strings

## Value

A logical vector

## Examples

``` r
using_r_version(ver = "4.3.0")
#> [1] FALSE
using_latest_r_version()
#> [1] TRUE
using_interactive_session()
#> [1] FALSE
```
